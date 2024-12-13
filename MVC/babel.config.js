export default {
  preset: 'ts-jest',
  testEnvironment: 'node',
  transform: {
    '^.+\\.tsx?$': ['ts-jest', { useESM: true }],
  },
  moduleFileExtensions: ['ts', 'js', 'json'],
  testMatch: ['**/?(*.)+(spec|test).ts'],
  globals: {
    'ts-jest': {
      useESM: true,  // Ensures that TS files are transformed correctly as ESM
    },
  },
  extensionsToTreatAsEsm: ['.ts'], // Treat TypeScript files as ESM
};
