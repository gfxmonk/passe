# This file has been generated by node2nix 1.5.3. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "ajv-5.5.2" = {
      name = "ajv";
      packageName = "ajv";
      version = "5.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ajv/-/ajv-5.5.2.tgz";
        sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
      };
    };
    "amdefine-1.0.1" = {
      name = "amdefine";
      packageName = "amdefine";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/amdefine/-/amdefine-1.0.1.tgz";
        sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
      };
    };
    "asap-2.0.6" = {
      name = "asap";
      packageName = "asap";
      version = "2.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/asap/-/asap-2.0.6.tgz";
        sha1 = "e50347611d7e690943208bbdafebcbc2fb866d46";
      };
    };
    "asn1-0.2.3" = {
      name = "asn1";
      packageName = "asn1";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
        sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
      };
    };
    "assert-plus-1.0.0" = {
      name = "assert-plus";
      packageName = "assert-plus";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    };
    "asynckit-0.4.0" = {
      name = "asynckit";
      packageName = "asynckit";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    };
    "aws-sign2-0.7.0" = {
      name = "aws-sign2";
      packageName = "aws-sign2";
      version = "0.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.7.0.tgz";
        sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
      };
    };
    "aws4-1.7.0" = {
      name = "aws4";
      packageName = "aws4";
      version = "1.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aws4/-/aws4-1.7.0.tgz";
        sha512 = "3rkdcpm3myysvq9nj6plgvpngzsbv7qk1wvb9f4m3gcsl23pf5x0hyph02svyl2v1lgjji8kl75ii7q04lhhhgjyw1irbinmxsl6qyz";
      };
    };
    "bcrypt-pbkdf-1.0.1" = {
      name = "bcrypt-pbkdf";
      packageName = "bcrypt-pbkdf";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.1.tgz";
        sha1 = "63bc5dcb61331b92bc05fd528953c33462a06f8d";
      };
    };
    "caseless-0.12.0" = {
      name = "caseless";
      packageName = "caseless";
      version = "0.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    };
    "clean-css-3.4.28" = {
      name = "clean-css";
      packageName = "clean-css";
      version = "3.4.28";
      src = fetchurl {
        url = "https://registry.npmjs.org/clean-css/-/clean-css-3.4.28.tgz";
        sha1 = "bf1945e82fc808f55695e6ddeaec01400efd03ff";
      };
    };
    "co-4.6.0" = {
      name = "co";
      packageName = "co";
      version = "4.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    };
    "combined-stream-1.0.6" = {
      name = "combined-stream";
      packageName = "combined-stream";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.6.tgz";
        sha1 = "723e7df6e801ac5613113a7e445a9b69cb632818";
      };
    };
    "commander-2.8.1" = {
      name = "commander";
      packageName = "commander";
      version = "2.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.8.1.tgz";
        sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
      };
    };
    "core-util-is-1.0.2" = {
      name = "core-util-is";
      packageName = "core-util-is";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    };
    "dashdash-1.14.1" = {
      name = "dashdash";
      packageName = "dashdash";
      version = "1.14.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    };
    "delayed-stream-1.0.0" = {
      name = "delayed-stream";
      packageName = "delayed-stream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    };
    "ecc-jsbn-0.1.1" = {
      name = "ecc-jsbn";
      packageName = "ecc-jsbn";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
        sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
      };
    };
    "errno-0.1.7" = {
      name = "errno";
      packageName = "errno";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/errno/-/errno-0.1.7.tgz";
        sha512 = "2bdzcjwgdkg5yrvlw6my57pn77k4j7a2pzppwqrq4va9f5bd4b5mzbhwpklhsy1jl7w9sjvnfs30h42nhz2dbdfhagnh8dk6l2d3yii";
      };
    };
    "extend-3.0.1" = {
      name = "extend";
      packageName = "extend";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend/-/extend-3.0.1.tgz";
        sha1 = "a755ea7bc1adfcc5a31ce7e762dbaadc5e636444";
      };
    };
    "extsprintf-1.3.0" = {
      name = "extsprintf";
      packageName = "extsprintf";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    };
    "fast-deep-equal-1.1.0" = {
      name = "fast-deep-equal";
      packageName = "fast-deep-equal";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
        sha1 = "c053477817c86b51daa853c81e059b733d023614";
      };
    };
    "fast-json-stable-stringify-2.0.0" = {
      name = "fast-json-stable-stringify";
      packageName = "fast-json-stable-stringify";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    };
    "forever-agent-0.6.1" = {
      name = "forever-agent";
      packageName = "forever-agent";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    };
    "form-data-2.3.2" = {
      name = "form-data";
      packageName = "form-data";
      version = "2.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/form-data/-/form-data-2.3.2.tgz";
        sha1 = "4970498be604c20c005d4f5c23aecd21d6b49099";
      };
    };
    "getpass-0.1.7" = {
      name = "getpass";
      packageName = "getpass";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    };
    "graceful-fs-4.1.11" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    };
    "graceful-readlink-1.0.1" = {
      name = "graceful-readlink";
      packageName = "graceful-readlink";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
        sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
      };
    };
    "har-schema-2.0.0" = {
      name = "har-schema";
      packageName = "har-schema";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/har-schema/-/har-schema-2.0.0.tgz";
        sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
      };
    };
    "har-validator-5.0.3" = {
      name = "har-validator";
      packageName = "har-validator";
      version = "5.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/har-validator/-/har-validator-5.0.3.tgz";
        sha1 = "ba402c266194f15956ef15e0fcf242993f6a7dfd";
      };
    };
    "http-signature-1.2.0" = {
      name = "http-signature";
      packageName = "http-signature";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-signature/-/http-signature-1.2.0.tgz";
        sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
      };
    };
    "image-size-0.5.5" = {
      name = "image-size";
      packageName = "image-size";
      version = "0.5.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/image-size/-/image-size-0.5.5.tgz";
        sha1 = "09dfd4ab9d20e29eb1c3e80b8990378df9e3cb9c";
      };
    };
    "is-typedarray-1.0.0" = {
      name = "is-typedarray";
      packageName = "is-typedarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    };
    "isstream-0.1.2" = {
      name = "isstream";
      packageName = "isstream";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    };
    "jsbn-0.1.1" = {
      name = "jsbn";
      packageName = "jsbn";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    };
    "json-schema-0.2.3" = {
      name = "json-schema";
      packageName = "json-schema";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    };
    "json-schema-traverse-0.3.1" = {
      name = "json-schema-traverse";
      packageName = "json-schema-traverse";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
        sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
      };
    };
    "json-stringify-safe-5.0.1" = {
      name = "json-stringify-safe";
      packageName = "json-stringify-safe";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    };
    "jsprim-1.4.1" = {
      name = "jsprim";
      packageName = "jsprim";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    };
    "mime-1.6.0" = {
      name = "mime";
      packageName = "mime";
      version = "1.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-1.6.0.tgz";
        sha512 = "1x901mk5cdib4xp27v4ivwwr7mhy64r4rk953bzivi5p9lf2bhw88ra2rhkd254xkdx2d3q30zkq239vc4yx4pfsj4hpys8rbr6fif7";
      };
    };
    "mime-db-1.33.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.33.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.33.0.tgz";
        sha512 = "36xnw59ik9fqym00cmwb5nyzg0l03k70cp413f7639j93wgmzk1mh0xjc7i6zz3r6k9xnwh0g5cm5a1f3y8c6plgy4qld7fm887ywh4";
      };
    };
    "mime-types-2.1.18" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.18.tgz";
        sha512 = "22krj1kw7n9z10zdyx7smcaim4bzwqsqzhspwha06q58gcrxfp93hw2cd0vk5crhq5p2dwzqlpacg32lrmp5sjzb798zdzy35mdmkwm";
      };
    };
    "minimist-0.0.8" = {
      name = "minimist";
      packageName = "minimist";
      version = "0.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    };
    "mkdirp-0.5.1" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    };
    "oauth-sign-0.8.2" = {
      name = "oauth-sign";
      packageName = "oauth-sign";
      version = "0.8.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.2.tgz";
        sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
      };
    };
    "performance-now-2.1.0" = {
      name = "performance-now";
      packageName = "performance-now";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/performance-now/-/performance-now-2.1.0.tgz";
        sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
      };
    };
    "promise-7.3.1" = {
      name = "promise";
      packageName = "promise";
      version = "7.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/promise/-/promise-7.3.1.tgz";
        sha512 = "17cn4nns2nxh9r0pdiqsqx3fpvaa82c1mhcr8r84k2a9hkpb0mj4bxzfbg3l9iy74yn9hj6mh2gsddsi3v939a1zp7ycbzqkxfm12cy";
      };
    };
    "prr-1.0.1" = {
      name = "prr";
      packageName = "prr";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/prr/-/prr-1.0.1.tgz";
        sha1 = "d3fc114ba06995a45ec6893f484ceb1d78f5f476";
      };
    };
    "punycode-1.4.1" = {
      name = "punycode";
      packageName = "punycode";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    };
    "qs-6.5.2" = {
      name = "qs";
      packageName = "qs";
      version = "6.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.5.2.tgz";
        sha512 = "0c46ws0x9g3mmkgfmvd78bzvnmv2b8ryg4ah6jvyyqgjv9v994z7xdyvsc4vg9sf98gg7phvy3q1ahgaj5fy3dwzf2rki6bixgl15ip";
      };
    };
    "request-2.87.0" = {
      name = "request";
      packageName = "request";
      version = "2.87.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/request/-/request-2.87.0.tgz";
        sha512 = "0vnsbflzj7gxa33r47bzsiaf7jc00b9iqkqdz8l7n9x5dgdgbq1qpcqqslds1arazipz8pjr4m5rf4ikg4d59d49gn9dky0ds921jkx";
      };
    };
    "safe-buffer-5.1.2" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha512 = "3xbm0dkya4bc3zwfwpdzbl8ngq0aai5ihlp2v3s39y7162c7wyvv9izj3g8hv6dy6vm2lq48lmfzygk0kxwbjb6xic7k4a329j99p8r";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "2v99f22kh56y72d3s8wrgdvf5n10ry40dh3fwnsxr4d5rfvxdfxfmc3qyqkscnj4f8799jy9bpg6cm21x2d811dr9ib83wjrlmkg6k1";
      };
    };
    "source-map-0.4.4" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz";
        sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
      };
    };
    "source-map-0.6.1" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz";
        sha512 = "3p7hw8p69ikj5mwapmqkacsjnbvdfk5ylyamjg9x5izkl717xvzj0vk3fnmx1n4pf54h5rs7r8ig5kk4jv4ycqqj0hv75cnx6k1lf2j";
      };
    };
    "sshpk-1.14.2" = {
      name = "sshpk";
      packageName = "sshpk";
      version = "1.14.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/sshpk/-/sshpk-1.14.2.tgz";
        sha1 = "c6fc61648a3d9c4e764fd3fcdf4ea105e492ba98";
      };
    };
    "tough-cookie-2.3.4" = {
      name = "tough-cookie";
      packageName = "tough-cookie";
      version = "2.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.4.tgz";
        sha512 = "0ncm6j3cjq1f26mzjf04k9bkw1b08w53s4qa3a11c1bdj4pgnqv1422c1xs5jyy6y1psppjx52fhagq5zkjkgrcpdkxcdiry96r77jd";
      };
    };
    "tunnel-agent-0.6.0" = {
      name = "tunnel-agent";
      packageName = "tunnel-agent";
      version = "0.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    };
    "tweetnacl-0.14.5" = {
      name = "tweetnacl";
      packageName = "tweetnacl";
      version = "0.14.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    };
    "uuid-3.2.1" = {
      name = "uuid";
      packageName = "uuid";
      version = "3.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-3.2.1.tgz";
        sha512 = "0843vl1c974n8kw5kn0kvhvhwk8y8jydr0xkwwl2963xxmkw4ingk6xj9c8m48jw2i95giglxzq5aw5v5mij9kv7fzln8pxav1cr6cd";
      };
    };
    "verror-1.10.0" = {
      name = "verror";
      packageName = "verror";
      version = "1.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    };
  };
in
{
  "bootstrap-3.2.0" = nodeEnv.buildNodePackage {
    name = "bootstrap";
    packageName = "bootstrap";
    version = "3.2.0";
    src = fetchurl {
      url = "https://registry.npmjs.org/bootstrap/-/bootstrap-3.2.0.tgz";
      sha1 = "a0726e7c12e79f4a2a504f8d1ee9f2850a83f637";
    };
    buildInputs = globalBuildInputs;
    meta = {
      description = "The most popular front-end framework for developing responsive, mobile first projects on the web.";
      homepage = http://getbootstrap.com/;
      license = {
        type = "MIT";
        url = "https://github.com/twbs/bootstrap/blob/master/LICENSE";
      };
    };
    production = true;
    bypassCache = false;
  };
  less = nodeEnv.buildNodePackage {
    name = "less";
    packageName = "less";
    version = "3.0.4";
    src = fetchurl {
      url = "https://registry.npmjs.org/less/-/less-3.0.4.tgz";
      sha512 = "1qmi7lbjfq3w5ygilwf5sagk463c0j6kj2wsidzh6100v02bpfi05c8kbycf395hrdmmy5ffb5f0rsvkvqyhxw9hxrlyvnafc9b4x5b";
    };
    dependencies = [
      sources."ajv-5.5.2"
      sources."asap-2.0.6"
      sources."asn1-0.2.3"
      sources."assert-plus-1.0.0"
      sources."asynckit-0.4.0"
      sources."aws-sign2-0.7.0"
      sources."aws4-1.7.0"
      sources."bcrypt-pbkdf-1.0.1"
      sources."caseless-0.12.0"
      sources."co-4.6.0"
      sources."combined-stream-1.0.6"
      sources."core-util-is-1.0.2"
      sources."dashdash-1.14.1"
      sources."delayed-stream-1.0.0"
      sources."ecc-jsbn-0.1.1"
      sources."errno-0.1.7"
      sources."extend-3.0.1"
      sources."extsprintf-1.3.0"
      sources."fast-deep-equal-1.1.0"
      sources."fast-json-stable-stringify-2.0.0"
      sources."forever-agent-0.6.1"
      sources."form-data-2.3.2"
      sources."getpass-0.1.7"
      sources."graceful-fs-4.1.11"
      sources."har-schema-2.0.0"
      sources."har-validator-5.0.3"
      sources."http-signature-1.2.0"
      sources."image-size-0.5.5"
      sources."is-typedarray-1.0.0"
      sources."isstream-0.1.2"
      sources."jsbn-0.1.1"
      sources."json-schema-0.2.3"
      sources."json-schema-traverse-0.3.1"
      sources."json-stringify-safe-5.0.1"
      sources."jsprim-1.4.1"
      sources."mime-1.6.0"
      sources."mime-db-1.33.0"
      sources."mime-types-2.1.18"
      sources."minimist-0.0.8"
      sources."mkdirp-0.5.1"
      sources."oauth-sign-0.8.2"
      sources."performance-now-2.1.0"
      sources."promise-7.3.1"
      sources."prr-1.0.1"
      sources."punycode-1.4.1"
      sources."qs-6.5.2"
      sources."request-2.87.0"
      sources."safe-buffer-5.1.2"
      sources."safer-buffer-2.1.2"
      sources."source-map-0.6.1"
      sources."sshpk-1.14.2"
      sources."tough-cookie-2.3.4"
      sources."tunnel-agent-0.6.0"
      sources."tweetnacl-0.14.5"
      sources."uuid-3.2.1"
      sources."verror-1.10.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "Leaner CSS";
      homepage = http://lesscss.org/;
      license = "Apache-2.0";
    };
    production = true;
    bypassCache = false;
  };
  less-plugin-clean-css = nodeEnv.buildNodePackage {
    name = "less-plugin-clean-css";
    packageName = "less-plugin-clean-css";
    version = "1.5.1";
    src = fetchurl {
      url = "https://registry.npmjs.org/less-plugin-clean-css/-/less-plugin-clean-css-1.5.1.tgz";
      sha1 = "cc57af7aa3398957e56decebe63cb60c23429703";
    };
    dependencies = [
      sources."amdefine-1.0.1"
      sources."clean-css-3.4.28"
      sources."commander-2.8.1"
      sources."graceful-readlink-1.0.1"
      sources."source-map-0.4.4"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "clean-css plugin for less.js";
      homepage = http://lesscss.org/;
    };
    production = true;
    bypassCache = false;
  };
}