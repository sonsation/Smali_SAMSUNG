.class Lcom/android/launcher3/allapps/ItemDetails;
.super Ljava/lang/Object;
.source "ItemDetails.java"


# instance fields
.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private name:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private sellerName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getIconImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/allapps/ItemDetails;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getItemSeller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher3/allapps/ItemDetails;->sellerName:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/launcher3/allapps/ItemDetails;->name:Ljava/lang/String;

    return-object v0
.end method

.method getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher3/allapps/ItemDetails;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/launcher3/allapps/ItemDetails;->price:Ljava/lang/String;

    return-object v0
.end method

.method getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher3/allapps/ItemDetails;->rating:Ljava/lang/String;

    return-object v0
.end method

.method setIconImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/launcher3/allapps/ItemDetails;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method

.method setItemSeller(Ljava/lang/String;)V
    .locals 0
    .param p1, "seller"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/launcher3/allapps/ItemDetails;->sellerName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/launcher3/allapps/ItemDetails;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher3/allapps/ItemDetails;->pkgName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/launcher3/allapps/ItemDetails;->price:Ljava/lang/String;

    .line 40
    return-void
.end method

.method setRating(Ljava/lang/String;)V
    .locals 0
    .param p1, "rank"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher3/allapps/ItemDetails;->rating:Ljava/lang/String;

    return-void
.end method
