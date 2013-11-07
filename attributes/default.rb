#
# Cookbook Name:: postgresql
# Attributes:: postgresql
#
# Copyright 2008-2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Only constant defaults here;
# attribute-dependent defaults in the attributes recipe.

default['postgresql']['enable_pgdg_apt'] = false
default['postgresql']['password'] = Hash.new
default['postgresql']['enable_pgdg_yum'] = false
default['postgresql']['initdb_locale'] = nil

default['postgresql']['pg_hba'] = [
  {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'ident'},
  {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'ident'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'md5'}
]

default['postgresql']['pgdg']['repo_rpm_url'] = {
  "9.3" => {
    "centos" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.3/redhat/rhel-6-i386/pgdg-centos93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-centos93-9.3-1.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.3/redhat/rhel-5-i386/pgdg-centos93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/redhat/rhel-5-x86_64/pgdg-centos93-9.3-1.noarch.rpm"
      }
    },
    "redhat" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.3/redhat/rhel-6-i386/pgdg-redhat93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-redhat93-9.3-1.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.3/redhat/rhel-5-i386/pgdg-redhat93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/redhat/rhel-5-x86_64/pgdg-redhat93-9.3-1.noarch.rpm"
      }
    },
    "scientific" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.3/redhat/rhel-6-i386/pgdg-sl93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-sl93-9.3-1.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.3/redhat/rhel-5-i386/pgdg-sl93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/redhat/rhel-5-x86_64/pgdg-sl93-9.3-1.noarch.rpm"
      }
    },
    "fedora" => {
      "19" => {
        "x86_64" => "http://yum.postgresql.org/9.3/fedora/fedora-19-x86_64/pgdg-fedora93-9.3-1.noarch.rpm"
      },
      "18" => {
        "i386" => "http://yum.postgresql.org/9.3/fedora/fedora-18-i386/pgdg-fedora93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/fedora/fedora-18-x86_64/pgdg-fedora93-9.3-1.noarch.rpm"
      },
      "17" => {
        "i386" => "http://yum.postgresql.org/9.3/fedora/fedora-17-i386/pgdg-fedora93-9.3-1.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.3/fedora/fedora-17-x86_64/pgdg-fedora93-9.3-1.noarch.rpm"
      }
    }
  },
  "9.2" => {
    "centos" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.2/redhat/rhel-6-i386/pgdg-centos92-9.2-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-centos92-9.2-6.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.2/redhat/rhel-5-i386/pgdg-centos92-9.2-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/redhat/rhel-5-x86_64/pgdg-centos92-9.2-6.noarch.rpm"
      }
    },
    "redhat" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.2/redhat/rhel-6-i386/pgdg-redhat92-9.2-7.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-redhat92-9.2-7.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.2/redhat/rhel-5-i386/pgdg-redhat92-9.2-7.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/redhat/rhel-5-x86_64/pgdg-redhat92-9.2-7.noarch.rpm"
      }
    },
    "scientific" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.2/redhat/rhel-6-i386/pgdg-sl92-9.2-8.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-sl92-9.2-8.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.2/redhat/rhel-5-i386/pgdg-sl92-9.2-8.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/redhat/rhel-5-x86_64/pgdg-sl92-9.2-8.noarch.rpm"
      }
    },
    "fedora" => {
      "19" => {
        "i386" => "http://yum.postgresql.org/9.2/fedora/fedora-19-i386/pgdg-fedora92-9.2-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/fedora/fedora-19-x86_64/pgdg-fedora92-9.2-6.noarch.rpm"
      },
      "18" => {
        "i386" => "http://yum.postgresql.org/9.2/fedora/fedora-18-i386/pgdg-fedora92-9.2-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/fedora/fedora-18-x86_64/pgdg-fedora92-9.2-6.noarch.rpm"
      },
      "17" => {
        "i386" => "http://yum.postgresql.org/9.2/fedora/fedora-17-i386/pgdg-fedora92-9.2-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/fedora/fedora-17-x86_64/pgdg-fedora92-9.2-5.noarch.rpm"
      },
      "16" => {
        "i386" => "http://yum.postgresql.org/9.2/fedora/fedora-16-i386/pgdg-fedora92-9.2-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.2/fedora/fedora-16-x86_64/pgdg-fedora92-9.2-5.noarch.rpm"
      }
    }
  },
  "9.1" => {
    "centos" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-6-i386/pgdg-centos91-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-5-x86_64/pgdg-centos91-9.1-4.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-5-i386/pgdg-centos91-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-5-x86_64/pgdg-centos91-9.1-4.noarch.rpm"
      },
      "4" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-4-i386/pgdg-centos91-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-4-x86_64/pgdg-centos91-9.1-4.noarch.rpm"
      }
    },
    "redhat" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-6-i386/pgdg-redhat91-9.1-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-6-x86_64/pgdg-redhat91-9.1-5.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-5-i386/pgdg-redhat91-9.1-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-5-x86_64/pgdg-redhat91-9.1-5.noarch.rpm"
      },
      "4" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-4-i386/pgdg-redhat-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-4-x86_64/pgdg-redhat-9.1-4.noarch.rpm"
      }
    },
    "scientific" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-6-i386/pgdg-sl91-9.1-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-6-x86_64/pgdg-sl91-9.1-6.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.1/redhat/rhel-5-i386/pgdg-sl91-9.1-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/redhat/rhel-5-x86_64/pgdg-sl91-9.1-6.noarch.rpm"
      }
    },
    "fedora" => {
      "16" => {
        "i386" => "http://yum.postgresql.org/9.1/fedora/fedora-16-i386/pgdg-fedora91-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/fedora/fedora-16-x86_64/pgdg-fedora91-9.1-4.noarch.rpm"
      },
      "15" => {
        "i386" => "http://yum.postgresql.org/9.1/fedora/fedora-15-i386/pgdg-fedora91-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/fedora/fedora-15-x86_64/pgdg-fedora91-9.1-4.noarch.rpm"
      },
      "14" => {
        "i386" => "http://yum.postgresql.org/9.1/fedora/fedora-14-i386/pgdg-fedora91-9.1-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.1/fedora/fedora-14-x86_64/pgdg-fedora-9.1-2.noarch.rpm"
      }
    }
  },
  "9.0" => {
    "centos" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-6-i386/pgdg-centos90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-6-x86_64/pgdg-centos90-9.0-5.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-5-i386/pgdg-centos90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-5-x86_64/pgdg-centos90-9.0-5.noarch.rpm"
      },
      "4" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-4-i386/pgdg-centos90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-4-x86_64/pgdg-centos90-9.0-5.noarch.rpm"
      }
    },
    "redhat" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-6-i386/pgdg-redhat90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-6-x86_64/pgdg-redhat90-9.0-5.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-5-i386/pgdg-redhat90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-5-x86_64/pgdg-redhat90-9.0-5.noarch.rpm"
      },
      "4" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-4-i386/pgdg-redhat90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-4-x86_64/pgdg-redhat90-9.0-5.noarch.rpm"
      }
    },
    "scientific" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-6-i386/pgdg-sl90-9.0-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-6-x86_64/pgdg-sl90-9.0-6.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/9.0/redhat/rhel-5-i386/pgdg-sl90-9.0-6.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/redhat/rhel-5-x86_64/pgdg-sl90-9.0-6.noarch.rpm"
      }
    },
    "fedora" => {
      "15" => {
        "i386" => "http://yum.postgresql.org/9.0/fedora/fedora-15-i386/pgdg-fedora90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/fedora/fedora-15-x86_64/pgdg-fedora90-9.0-5.noarch.rpm"
      },
      "14" => {
        "i386" => "http://yum.postgresql.org/9.0/fedora/fedora-14-i386/pgdg-fedora90-9.0-5.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/9.0/fedora/fedora-14-x86_64/pgdg-fedora90-9.0-5.noarch.rpm"
      }
    }
  },
  "8.4" => {
    "centos" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-6-i386/pgdg-centos-8.4-3.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-6-x86_64/pgdg-centos-8.4-3.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-5-i386/pgdg-centos-8.4-3.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-5-x86_64/pgdg-centos-8.4-3.noarch.rpm"
      },
      "4" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-4-i386/pgdg-centos-8.4-3.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-4-x86_64/pgdg-centos-8.4-3.noarch.rpm"
      }
    },
    "redhat" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-6-i386/pgdg-redhat-8.4-3.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-6-x86_64/pgdg-redhat-8.4-3.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-5-i386/pgdg-redhat-8.4-3.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-5-x86_64/pgdg-redhat-8.4-3.noarch.rpm"
      },
      "4" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-4-i386/pgdg-redhat-8.4-3.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-4-x86_64/pgdg-redhat-8.4-3.noarch.rpm"
      }
    },
    "scientific" => {
      "6" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-6-i386/pgdg-sl84-8.4-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-6-x86_64/pgdg-sl84-8.4-4.noarch.rpm"
      },
      "5" => {
        "i386" => "http://yum.postgresql.org/8.4/redhat/rhel-5-i386/pgdg-sl-8.4-4.noarch.rpm",
        "x86_64" => "http://yum.postgresql.org/8.4/redhat/rhel-5-x86_64/pgdg-sl-8.4-4.noarch.rpm"
      }
    },
    "fedora" => {
      "14" => {
        "i386" => "http://yum.postgresql.org/8.4/fedora/fedora-14-i386/",
        "x86_64" => "http://yum.postgresql.org/8.4/fedora/fedora-14-x86_64/"
      },
      "13" => {
        "i386" => "http://yum.postgresql.org/8.4/fedora/fedora-13-i386/",
        "x86_64" => "http://yum.postgresql.org/8.4/fedora/fedora-13-x86_64/"
      },
      "12" => {
        "i386" => "http://yum.postgresql.org/8.4/fedora/fedora-12-i386/",
        "x86_64" => "http://yum.postgresql.org/8.4/fedora/fedora-12-x86_64/"
      },
      "8" => {
        "i386" => "http://yum.postgresql.org/8.4/fedora/fedora-8-i386/",
        "x86_64" => "http://yum.postgresql.org/8.4/fedora/fedora-8-x86_64/"
      },
      "7" => {
        "i386" => "http://yum.postgresql.org/8.4/fedora/fedora-7-i386/",
        "x86_64" => "http://yum.postgresql.org/8.4/fedora/fedora-7-x86_64/"
      }
    }
  },
};

