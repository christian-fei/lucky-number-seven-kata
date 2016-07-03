const LuckyNumberSeven = require('./LuckyNumberSeven')
const expect = require('chai').expect

describe('LuckyNumberSeven', () => {
  describe('#between', () => {
    it('no lucky numbers for range 0 to 6',  () => {
      expect( [] ).to.deep.equal( LuckyNumberSeven.between(0,6) )
    })

    it('7 is a lucky number in the range 0 to 9', () => {
      expect( [7] ).to.deep.equal( LuckyNumberSeven.between(0,9) )
    })

    it('7 and 16 are lucky numbers in the range 0 to 20', () => {
      expect( [7, 16] ).to.deep.equal( LuckyNumberSeven.between(0,20) )
    })

    it('7, 16, 25, 34, 43, 52, 61, 70, 79, 88 and 97 are lucky numbers in the range 0 to 100', () => {
      expect( [7, 16, 25, 34, 43, 52, 61, 70, 79, 88, 97] )
      .to.deep.equal( LuckyNumberSeven.between(0,100) )
    })

    it('43, 52, 61 and 70 are lucky numbers in the range 40 to 70', () => {
      expect( [43, 52, 61, 70] )
      .to.deep.equal( LuckyNumberSeven.between(40,70) )
    })
  })

  describe('#isLucky', () => {
    it('1 is not lucky', () => {
      expect( false ).to.equal( LuckyNumberSeven.isLucky(1) )
    })

    it('7 is lucky', () => {
      expect( true ).to.equal( LuckyNumberSeven.isLucky(7) )
    })

    it('16 is lucky', () => {
      expect( true ).to.equal( LuckyNumberSeven.isLucky(16) )
    })

    it('79 is lucky', () => {
      expect( true ).to.equal( LuckyNumberSeven.isLucky(79) )
    })
  })

  describe('#luckySum', () => {
    it('single digit number is the sum', () => {
      expect( 1 ).to.equal( LuckyNumberSeven.luckySum(1) )
      expect( 9 ).to.equal( LuckyNumberSeven.luckySum(9) )
    })

    it('recusively computes the sum down to single digit', () => {
      expect( 1 ).to.equal( LuckyNumberSeven.luckySum(10) )
      expect( 7 ).to.equal( LuckyNumberSeven.luckySum(79) )
    })
  })
})
