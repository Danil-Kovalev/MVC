/**
 * Config for connect to database
 */
export const CONFIG = {
    host: process.env.MYSQL_HOST || "127.0.0.1",
    port: 3306,
    user: process.env.MYSQL_USER || "ubuntu",
    database: process.env.MYSQL_DATABASE || "dataBooks",
    password: process.env.MYSQL_PASSWORD || ""
}
