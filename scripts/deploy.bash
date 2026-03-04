#! /bin/bash

set -ex

date

CLOUDFLARE_ACCOUNT_ID=bf7ff1d8111be924c69ffc65a3ebdb48 pnpx wrangler pages deploy public/ --project-name=resume
