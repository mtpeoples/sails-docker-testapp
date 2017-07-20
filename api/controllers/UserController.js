/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  hello: (req, res) => {
    User
      .find({
      	where: {name: 'ben'}
      })
      .exec((err, users) => {
        if (err) {
          return;
        }
        res.json(users);
      });
  }
};
