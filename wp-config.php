<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'andrew_wp_database' );

/** Database username */
define( 'DB_USER', 'andrew' );

/** Database password */
define( 'DB_PASSWORD', '12048937' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'JC={*wU86MMQzjV&WkhV%Dr5:QdG&b}q)]|FZh`0RAncY!BN48lAW~sN,=r.8xt(' );
define( 'SECURE_AUTH_KEY',  'gjND%[6$a97xOb;q:6!XBF+N1Syk{nq&OKMpZ<?&3V?%p?/tJl8c,7T$p.;j@@>?' );
define( 'LOGGED_IN_KEY',    'I si[?%RLoF6p1dZ(A7f6ruejiHvvKr5B0sHHCmd1QZZqJh;Gb>~zGqTlk_Ua(bf' );
define( 'NONCE_KEY',        '@K(S]+Bo,qoOu]A YUVU>f-Hsr$y,w=:Jk(9g3D^@h&UczB-!~$Gig>StCqW%]N^' );
define( 'AUTH_SALT',        '.S[6N<3|~T@i<%f2v{6(9pXe@:B=,yq>;WQ>4$k},qH<+2vtloSK]2Q-((HhM[Ai' );
define( 'SECURE_AUTH_SALT', 'OWSIW-`v%V&2Re!XJ)0&G}C LrE.{z jqGBCHI0^M6@7PnOAXm>j|c71a,k@PH<n' );
define( 'LOGGED_IN_SALT',   '+/P3e;Js)( .aKzfEoGc_BHE{uQ|NE}D}{*.HV#Tv [tj@B9<:NqwTa+kUqC6XZu' );
define( 'NONCE_SALT',       '> Rqd-kpgdLzVpB&,$Y|[#47u-y= n[X0h:O!/m(2mR,``tq:Doxiv8_fEGA=-a]' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_1';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


/* Multisite */
define( 'WP_ALLOW_MULTISITE', true );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
