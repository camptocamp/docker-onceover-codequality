FROM ruby:2.4.9-slim-buster

RUN apt -y update
RUN apt install -y git
RUN apt install -y python-pip
RUN pip install pyyaml
RUN gem install onceover-codequality \
                puppet-lint-empty_string-check \
                puppet-lint-spaceship_operator_without_tag-check \
                puppet-lint-unquoted_string-check \
                puppet-lint-undef_in_function-check \
                puppet-lint-leading_zero-check \
                puppet-lint-trailing_comma-check \
                puppet-lint-file_ensure-check \
                puppet-lint-version_comparison-check \
                puppet-lint-file_source_rights-check
