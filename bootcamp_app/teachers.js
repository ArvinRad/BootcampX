// Connecting to database to fetch some data
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// the pool will emit an error on behalf of any idle clients
// it contains if a backend error or network partition happens
pool.on('error', (err, client) => {
  console.error('Unexpected error on idle client', err)
  process.exit(-1)
})

// promise - checkout a client
pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.teacher} has assisted in the ${user.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));
