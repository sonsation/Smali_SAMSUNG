.class Lorg/simpleframework/xml/core/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/PathParser$PathSection;
    }
.end annotation


# instance fields
.field protected attribute:Z

.field protected attributes:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected builder:Ljava/lang/StringBuilder;

.field protected cache:Ljava/lang/String;

.field protected count:I

.field protected data:[C

.field protected elements:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected indexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected location:Ljava/lang/String;

.field protected names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected off:I

.field protected path:Ljava/lang/String;

.field protected prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected start:I

.field protected style:Lorg/simpleframework/xml/stream/Style;

.field protected type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/Cache;

    .line 149
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/Cache;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p3}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    .line 155
    iput-object p2, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 156
    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->parse(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private align()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 616
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 618
    if-gt v0, v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private attribute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 548
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .line 550
    :cond_0
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v1, v2, :cond_1

    .line 557
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    if-le v1, v0, :cond_2

    .line 560
    iput-boolean v5, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    .line 562
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/PathParser;->attribute(II)V

    .line 563
    return-void

    .line 551
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v1, v1, v2

    .line 553
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v2, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v1, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 558
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v1, "Attribute reference in \'%s\' for %s is empty"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private attribute(II)V
    .locals 2

    .prologue
    .line 712
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 714
    if-gtz p2, :cond_0

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->attribute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private attribute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 750
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    return-void
.end method

.method private build()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 447
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 448
    add-int/lit8 v5, v4, -0x1

    move v3, v0

    .line 450
    :goto_0
    if-lt v3, v4, :cond_0

    .line 472
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    .line 473
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 455
    if-gtz v3, :cond_2

    .line 458
    :goto_1
    iget-boolean v6, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-nez v6, :cond_3

    .line 462
    :cond_1
    if-nez v0, :cond_4

    .line 466
    :goto_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 456
    :cond_2
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 458
    :cond_3
    if-ne v3, v5, :cond_1

    .line 459
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 463
    :cond_4
    iget-object v6, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private element()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 518
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    move v0, v1

    .line 521
    :goto_0
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v3, v4, :cond_1

    .line 538
    :cond_0
    :goto_1
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/PathParser;->element(II)V

    .line 539
    return-void

    .line 522
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v3, v3, v4

    .line 524
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x40

    .line 525
    if-eq v3, v4, :cond_3

    const/16 v4, 0x5b

    .line 528
    if-eq v3, v4, :cond_4

    const/16 v4, 0x2f

    .line 531
    if-eq v3, v4, :cond_0

    .line 532
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v2, "Illegal character \'%s\' in element for \'%s\' in %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v4, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 526
    :cond_3
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_1

    .line 529
    :cond_4
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->index()V

    goto :goto_1
.end method

.method private element(II)V
    .locals 2

    .prologue
    .line 696
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 698
    if-gtz p2, :cond_0

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->element(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private element(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x3a

    .line 728
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    .line 731
    if-gtz v1, :cond_0

    .line 735
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    return-void

    .line 732
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 733
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private index()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_3

    move v0, v1

    .line 587
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_2

    .line 590
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-void

    .line 577
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v2, v2, v3

    .line 579
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/PathParser;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    mul-int/lit8 v0, v0, 0xa

    .line 583
    add-int/2addr v0, v2

    .line 584
    add-int/lit8 v0, v0, -0x30

    .line 576
    :goto_1
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 588
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v2, "Invalid index for path \'%s\' in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private isDigit(C)Z
    .locals 1

    .prologue
    .line 645
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 632
    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private isLetter(C)Z
    .locals 1

    .prologue
    .line 684
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x5f

    .line 671
    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 658
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isSpecial(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 409
    if-nez p1, :cond_0

    .line 414
    :goto_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->path()V

    .line 415
    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    .line 411
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    .line 412
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method private path()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 424
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    .line 430
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v0, v1, :cond_2

    .line 436
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->truncate()V

    .line 437
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->build()V

    .line 438
    return-void

    .line 425
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v1, "Path \'%s\' in %s references document root"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 428
    :cond_1
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->skip()V

    goto :goto_0

    .line 431
    :cond_2
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-nez v0, :cond_3

    .line 434
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->segment()V

    goto :goto_0

    .line 432
    :cond_3
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v1, "Path \'%s\' in %s references an invalid attribute"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private segment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    .line 500
    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    .line 503
    if-eq v0, v1, :cond_1

    .line 506
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->element()V

    .line 508
    :goto_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->align()V

    .line 509
    return-void

    .line 501
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v1, "Invalid path expression \'%s\' in %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 504
    :cond_1
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->attribute()V

    goto :goto_0
.end method

.method private skip()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 482
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v0, v0

    if-gt v0, v5, :cond_0

    .line 488
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    .line 489
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 486
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_0

    .line 484
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string/jumbo v1, "Path \'%s\' in %s has an illegal syntax"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private truncate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 601
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 606
    :goto_0
    return-void

    .line 602
    :cond_0
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_0

    .line 604
    :cond_1
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    if-eqz v0, :cond_2

    .line 327
    :cond_1
    :goto_0
    return-object v0

    .line 321
    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 324
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    if-eqz v0, :cond_2

    .line 278
    :cond_1
    :goto_0
    return-object v0

    .line 272
    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_1

    .line 275
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    return-object p1

    .line 301
    :cond_1
    return-object v0
.end method

.method public getFirst()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 240
    add-int/lit8 v0, v0, -0x1

    .line 242
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(I)Lorg/simpleframework/xml/core/Expression;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Lorg/simpleframework/xml/core/Expression;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 394
    sub-int v1, v0, p2

    if-ge v1, p1, :cond_0

    .line 397
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    invoke-direct {v0, p0, p1, p1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object v0

    .line 395
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PathParser$PathSection;

    sub-int/2addr v0, p2

    invoke-direct {v1, p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object v1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAttribute()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPath()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 764
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    sub-int/2addr v0, v1

    .line 766
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 769
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    return-object v0

    .line 767
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    goto :goto_0
.end method
