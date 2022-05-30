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
     * @var string
     *
     * @ORM\Column(name="id", type="string", length=36)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="product_id_seq", allocationSize=1, initialValue=1)
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=500, nullable=false)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="price", type="decimal", precision=4, scale=2, nullable=false)
     */
    private $price;

    /**
     * @var string
     *
     * @ORM\Column(name="stock_sector", type="string", length=255, nullable=false)
     */
    private $stockSector;

    /**
     * @var string
     *
     * @ORM\Column(name="stock_name", type="string", length=255, nullable=false)
     */
    private $stockName;

    /**
     * @var string
     *
     * @ORM\Column(name="stock_market", type="string", length=255, nullable=false)
     */
    private $stockMarket;


    /**
     * Get id.
     *
     * @return string
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name.
     *
     * @param string $name
     *
     * @return Product
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name.
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set description.
     *
     * @param string $description
     *
     * @return Product
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description.
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set price.
     *
     * @param string $price
     *
     * @return Product
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get price.
     *
     * @return string
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set stockSector.
     *
     * @param string $stockSector
     *
     * @return Product
     */
    public function setStockSector($stockSector)
    {
        $this->stockSector = $stockSector;

        return $this;
    }

    /**
     * Get stockSector.
     *
     * @return string
     */
    public function getStockSector()
    {
        return $this->stockSector;
    }

    /**
     * Set stockName.
     *
     * @param string $stockName
     *
     * @return Product
     */
    public function setStockName($stockName)
    {
        $this->stockName = $stockName;

        return $this;
    }

    /**
     * Get stockName.
     *
     * @return string
     */
    public function getStockName()
    {
        return $this->stockName;
    }

    /**
     * Set stockMarket.
     *
     * @param string $stockMarket
     *
     * @return Product
     */
    public function setStockMarket($stockMarket)
    {
        $this->stockMarket = $stockMarket;

        return $this;
    }

    /**
     * Get stockMarket.
     *
     * @return string
     */
    public function getStockMarket()
    {
        return $this->stockMarket;
    }
}
