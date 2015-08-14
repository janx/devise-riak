# README

This repo is just an example, not a complete solution.

To make devise work with curator, basically you need to:

* [customize devise](https://github.com/janx/devise/tree/riak), add `devise/orm/curator` and generator. `devise/orm/curator` is based on `orm_adapter`.
* [customize orm_adapter](https://github.com/janx/orm_adapter), add adapter for curator.
* [customize curator](https://github.com/baoquan-hq/curator), some fixes to work with devise
* add polyfills to your devise model. I hand written those polyfills here but you may not need to do that if you use gems like `virtus`.
