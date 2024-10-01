const sql = {
    searchDataByFilterItem: `select fundraiser.*, category.name
                                from category
                                join fundraiser on fundraiser.category_id = category.category_id
                                where
                                (fundraiser.active = 1)
                                and (fundraiser.category_id = ? or ? = '')
                                and (fundraiser.organizer = ? or ? = '')
                                and (fundraiser.city = ? or ? = '')`,
    searchAllCategory: 'select * from category',
    searchAllOrganizer: 'select organizer from fundraiser',
    searchAllCity: 'select city from fundraiser',
    searchInfoByFundraiserId: `select fundraiser.*, category.name
                                from category
                                join fundraiser on fundraiser.category_id = category.category_id
                                where fundraiser.fundraiser_id = ?`,
};
module.exports = sql;