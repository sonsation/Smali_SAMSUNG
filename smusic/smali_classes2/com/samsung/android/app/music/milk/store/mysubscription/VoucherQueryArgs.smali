.class public Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "VoucherQueryArgs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->setDefaultQuery()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->setDefaultQuery()V

    .line 18
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->selection:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->uri:Landroid/net/Uri;

    .line 20
    return-void
.end method

.method private createProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string/jumbo v1, "voucherId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string/jumbo v1, "voucherCode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string/jumbo v1, "voucherTitle"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v1, "voucherDesc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string/jumbo v1, "startDateLocal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "expiryDateLocal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "periodType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string/jumbo v1, "statusCode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v1, "read"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string/jumbo v1, "voucherType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "pricingTypeCode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "periodValue"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "periodType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private setDefaultQuery()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->selection:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->createProjection()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->projection:[Ljava/lang/String;

    .line 31
    const-string v0, "expiryDateLocal desc"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->orderBy:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->getContentUriForUiList()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;->uri:Landroid/net/Uri;

    .line 33
    return-void
.end method
