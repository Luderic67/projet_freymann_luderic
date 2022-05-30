<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Product
 *
 * @ORM\Table(name="product")
 * @ORM\Entity
 */
class Product
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="product_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string|null
     *
     * @ORM\Column(name="name", type="string", length=32, nullable=true)
     */
    private $name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="string", length=255, nullable=true)
     */
    private $description;

    /**
     * @var int|null
     *
     * @ORM\Column(name="price", type="integer", nullable=true)
     */
    private $price;

    /**
     * @var string|null
     *
     * @ORM\Column(name="stock_sector", type="string", length=255, nullable=true)
     */
    private $stock_sector;

    /**
     * @var string|null
     *
     * @ORM\Column(name="stock_name", type="string", length=255, nullable=true)
     */
    private $stock_name;

    /**
     * @var string|null
     *
     * @ORM\Column(name="stock_market", type="string", length=255, nullable=true)
     */
    private $stock_market;


    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name.
     *
     * @param string|null $name
     *
     * @return Product
     */
    public function setName($name = null)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name.
     *
     * @return string|null
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set description.
     *
     * @param string|null $description
     *
     * @return Product
     */
    public function setDescription($description = null)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description.
     *
     * @return string|null
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set price.
     *
     * @param int|null $price
     *
     * @return Product
     */
    public function setPrice($price = null)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price.
     *
     * @return int|null
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set stock_sector.
     *
     * @param int|null $stock_sector
     *
     * @return Product
     */
    public function setStockSector($stock_sector = null)
    {
        $this->stock_sector = $stock_sector;

        return $this;
    }

    /**
     * Get stock_sector.
     *
     * @return int|null
     */
    public function getStockSector()
    {
        return $this->stock_sector;
    }

    /**
     * Set stock_name.
     *
     * @param int|null $stock_name
     *
     * @return Product
     */
    public function setStockName($stock_name = null)
    {
        $this->stock_name = $stock_name;

        return $this;
    }

    /**
     * Get stock_name.
     *
     * @return int|null
     */
    public function getStockName()
    {
        return $this->stock_name;
    }

     /**
     * Set stock_market.
     *
     * @param int|null $stock_market
     *
     * @return Product
     */
    public function setStockMarket($stock_market = null)
    {
        $this->stock_market = $stock_market;

        return $this;
    }

    /**
     * Get stock_market.
     *
     * @return int|null
     */
    public function getStockMarket()
    {
        return $this->stock_market;
    }
}
