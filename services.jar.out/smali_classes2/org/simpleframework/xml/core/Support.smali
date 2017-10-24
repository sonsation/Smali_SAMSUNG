.class Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;
.source "Support.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private final defaults:Lorg/simpleframework/xml/core/DetailExtractor;

.field private final details:Lorg/simpleframework/xml/core/DetailExtractor;

.field private final filter:Lorg/simpleframework/xml/filter/Filter;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final instances:Lorg/simpleframework/xml/core/InstanceFactory;

.field private final labels:Lorg/simpleframework/xml/core/LabelExtractor;

.field private final matcher:Lorg/simpleframework/xml/transform/Matcher;

.field private final scanners:Lorg/simpleframework/xml/core/ScannerFactory;

.field private final transform:Lorg/simpleframework/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lorg/simpleframework/xml/core/DetailExtractor;

    sget-object v1, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/DefaultType;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    .line 143
    new-instance v0, Lorg/simpleframework/xml/transform/Transformer;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/transform/Transformer;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    .line 144
    new-instance v0, Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/ScannerFactory;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->scanners:Lorg/simpleframework/xml/core/ScannerFactory;

    .line 145
    new-instance v0, Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/DetailExtractor;-><init>(Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    .line 146
    new-instance v0, Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/LabelExtractor;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    .line 147
    new-instance v0, Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/InstanceFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    .line 148
    iput-object p2, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    .line 149
    iput-object p1, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 150
    iput-object p3, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    .line 151
    return-void
.end method

.method private getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 445
    :cond_1
    return-object v0
.end method

.method public static getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 565
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    .line 568
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    .line 571
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    .line 574
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_3

    .line 577
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_4

    .line 580
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_5

    .line 583
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_6

    .line 586
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_7

    .line 589
    return-object p0

    :cond_0
    const-class v0, Ljava/lang/Double;

    .line 566
    return-object v0

    :cond_1
    const-class v0, Ljava/lang/Float;

    .line 569
    return-object v0

    :cond_2
    const-class v0, Ljava/lang/Integer;

    .line 572
    return-object v0

    :cond_3
    const-class v0, Ljava/lang/Long;

    .line 575
    return-object v0

    :cond_4
    const-class v0, Ljava/lang/Boolean;

    .line 578
    return-object v0

    :cond_5
    const-class v0, Ljava/lang/Character;

    .line 581
    return-object v0

    :cond_6
    const-class v0, Ljava/lang/Short;

    .line 584
    return-object v0

    :cond_7
    const-class v0, Ljava/lang/Byte;

    .line 587
    return-object v0
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 547
    :cond_0
    invoke-static {p0}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {p1}, Lorg/simpleframework/xml/core/Support;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_1
.end method

.method public static isFloat(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-class v0, Ljava/lang/Double;

    .line 519
    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    .line 522
    if-eq p0, v0, :cond_1

    .line 525
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    .line 528
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_3

    .line 531
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_0
    return v1

    .line 523
    :cond_1
    return v1

    .line 526
    :cond_2
    return v1

    .line 529
    :cond_3
    return v1
.end method


# virtual methods
.method public getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;->getDetail(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    return-object v0
.end method

.method public getDetail(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/Detail;
    .locals 1

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 278
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getDetail(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;->getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    if-nez p2, :cond_0

    .line 310
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getFields(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lorg/simpleframework/xml/stream/Format;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/InstanceFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->instances:Lorg/simpleframework/xml/core/InstanceFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/InstanceFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getLabel(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Contact;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->labels:Lorg/simpleframework/xml/core/LabelExtractor;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/LabelExtractor;->getList(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Support;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p2, :cond_0

    .line 342
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->details:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->defaults:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->getMethods(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getName()Ljava/lang/String;

    move-result-object v0

    .line 422
    if-nez v0, :cond_0

    .line 425
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Support;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    return-object v0
.end method

.method public getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->scanners:Lorg/simpleframework/xml/core/ScannerFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ScannerFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    return-object v0
.end method

.method public getTransform(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0
.end method

.method public isContainer(Ljava/lang/Class;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const-class v0, Ljava/util/Collection;

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    .line 503
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0

    .line 501
    :cond_0
    return v1

    .line 504
    :cond_1
    return v1
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-class v0, Ljava/lang/String;

    .line 461
    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Float;

    .line 464
    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    .line 467
    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Long;

    .line 470
    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    .line 473
    if-eq p1, v0, :cond_4

    const-class v0, Ljava/lang/Boolean;

    .line 476
    if-eq p1, v0, :cond_5

    .line 479
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_6

    .line 482
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 485
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 462
    :cond_0
    return v1

    .line 465
    :cond_1
    return v1

    .line 468
    :cond_2
    return v1

    .line 471
    :cond_3
    return v1

    .line 474
    :cond_4
    return v1

    .line 477
    :cond_5
    return v1

    .line 480
    :cond_6
    return v1

    .line 483
    :cond_7
    return v1
.end method

.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/Transformer;->valid(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->transform:Lorg/simpleframework/xml/transform/Transformer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/Transformer;->write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
