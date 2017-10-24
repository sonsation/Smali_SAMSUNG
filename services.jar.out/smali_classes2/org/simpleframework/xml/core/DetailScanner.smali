.class Lorg/simpleframework/xml/core/DetailScanner;
.super Ljava/lang/Object;
.source "DetailScanner.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Detail;


# instance fields
.field private access:Lorg/simpleframework/xml/DefaultType;

.field private declaration:Lorg/simpleframework/xml/NamespaceList;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation
.end field

.field private labels:[Ljava/lang/annotation/Annotation;

.field private methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private namespace:Lorg/simpleframework/xml/Namespace;

.field private order:Lorg/simpleframework/xml/Order;

.field private override:Lorg/simpleframework/xml/DefaultType;

.field private required:Z

.field private root:Lorg/simpleframework/xml/Root;

.field private strict:Z

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/DetailScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    .line 137
    iput-object p2, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    .line 139
    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    .line 140
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->scan(Ljava/lang/Class;)V

    .line 141
    return-void
.end method

.method private access(Ljava/lang/annotation/Annotation;)V
    .locals 1

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    check-cast p1, Lorg/simpleframework/xml/Default;

    .line 497
    invoke-interface {p1}, Lorg/simpleframework/xml/Default;->required()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->required:Z

    .line 498
    invoke-interface {p1}, Lorg/simpleframework/xml/Default;->value()Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->access:Lorg/simpleframework/xml/DefaultType;

    goto :goto_0
.end method

.method private extract(Ljava/lang/Class;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 380
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 397
    return-void

    .line 380
    :cond_0
    aget-object v3, v1, v0

    .line 381
    instance-of v4, v3, Lorg/simpleframework/xml/Namespace;

    if-nez v4, :cond_1

    .line 384
    :goto_1
    instance-of v4, v3, Lorg/simpleframework/xml/NamespaceList;

    if-nez v4, :cond_2

    .line 387
    :goto_2
    instance-of v4, v3, Lorg/simpleframework/xml/Root;

    if-nez v4, :cond_3

    .line 390
    :goto_3
    instance-of v4, v3, Lorg/simpleframework/xml/Order;

    if-nez v4, :cond_4

    .line 393
    :goto_4
    instance-of v4, v3, Lorg/simpleframework/xml/Default;

    if-nez v4, :cond_5

    .line 380
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/DetailScanner;->namespace(Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 385
    :cond_2
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/DetailScanner;->scope(Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    .line 388
    :cond_3
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/DetailScanner;->root(Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    .line 391
    :cond_4
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/DetailScanner;->order(Ljava/lang/annotation/Annotation;)V

    goto :goto_4

    .line 394
    :cond_5
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/DetailScanner;->access(Ljava/lang/annotation/Annotation;)V

    goto :goto_5
.end method

.method private fields(Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 425
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 427
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 431
    return-void

    .line 427
    :cond_0
    aget-object v3, v1, v0

    .line 428
    new-instance v4, Lorg/simpleframework/xml/core/FieldDetail;

    invoke-direct {v4, v3}, Lorg/simpleframework/xml/core/FieldDetail;-><init>(Ljava/lang/reflect/Field;)V

    .line 429
    iget-object v3, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private methods(Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 408
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 410
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 414
    return-void

    .line 410
    :cond_0
    aget-object v3, v1, v0

    .line 411
    new-instance v4, Lorg/simpleframework/xml/core/MethodDetail;

    invoke-direct {v4, v3}, Lorg/simpleframework/xml/core/MethodDetail;-><init>(Ljava/lang/reflect/Method;)V

    .line 412
    iget-object v3, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private namespace(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    check-cast p1, Lorg/simpleframework/xml/Namespace;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    goto :goto_0
.end method

.method private order(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    check-cast p1, Lorg/simpleframework/xml/Order;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->order:Lorg/simpleframework/xml/Order;

    goto :goto_0
.end method

.method private root(Ljava/lang/annotation/Annotation;)V
    .locals 3

    .prologue
    .line 441
    if-nez p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    check-cast p1, Lorg/simpleframework/xml/Root;

    .line 443
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 446
    if-eqz p1, :cond_0

    .line 447
    invoke-interface {p1}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/DetailScanner;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 452
    :goto_1
    invoke-interface {p1}, Lorg/simpleframework/xml/Root;->strict()Z

    move-result v1

    iput-boolean v1, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    .line 453
    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->root:Lorg/simpleframework/xml/Root;

    .line 454
    iput-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->name:Ljava/lang/String;

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private scan(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->methods(Ljava/lang/Class;)V

    .line 367
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->fields(Ljava/lang/Class;)V

    .line 368
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/DetailScanner;->extract(Ljava/lang/Class;)V

    .line 369
    return-void
.end method

.method private scope(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    check-cast p1, Lorg/simpleframework/xml/NamespaceList;

    iput-object p1, p0, Lorg/simpleframework/xml/core/DetailScanner;->declaration:Lorg/simpleframework/xml/NamespaceList;

    goto :goto_0
.end method


# virtual methods
.method public getAccess()Lorg/simpleframework/xml/DefaultType;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->access:Lorg/simpleframework/xml/DefaultType;

    return-object v0

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->labels:[Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/FieldDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/MethodDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->methods:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/simpleframework/xml/Namespace;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->namespace:Lorg/simpleframework/xml/Namespace;

    return-object v0
.end method

.method public getNamespaceList()Lorg/simpleframework/xml/NamespaceList;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->declaration:Lorg/simpleframework/xml/NamespaceList;

    return-object v0
.end method

.method public getOrder()Lorg/simpleframework/xml/Order;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->order:Lorg/simpleframework/xml/Order;

    return-object v0
.end method

.method public getOverride()Lorg/simpleframework/xml/DefaultType;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->override:Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

.method public getRoot()Lorg/simpleframework/xml/Root;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->root:Lorg/simpleframework/xml/Root;

    return-object v0
.end method

.method public getSuper()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    .line 351
    if-eq v0, v1, :cond_0

    .line 354
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 352
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isInstantiable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    .line 191
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    .line 192
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->required:Z

    return v0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->strict:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailScanner;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
