.class Lorg/simpleframework/xml/stream/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/Formatter$Tag;
    }
.end annotation


# static fields
.field private static final AND:[C

.field private static final CLOSE:[C

.field private static final DOUBLE:[C

.field private static final GREATER:[C

.field private static final LESS:[C

.field private static final NAMESPACE:[C

.field private static final OPEN:[C

.field private static final SINGLE:[C


# instance fields
.field private buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

.field private indenter:Lorg/simpleframework/xml/stream/Indenter;

.field private last:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field private prolog:Ljava/lang/String;

.field private result:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    .line 40
    new-array v0, v0, [C

    const/16 v1, 0x78

    aput-char v1, v0, v3

    const/16 v1, 0x6d

    aput-char v1, v0, v4

    const/16 v1, 0x6c

    aput-char v1, v0, v5

    const/16 v1, 0x6e

    aput-char v1, v0, v6

    const/16 v1, 0x73

    aput-char v1, v0, v7

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    .line 45
    new-array v0, v7, [C

    const/16 v1, 0x26

    aput-char v1, v0, v3

    const/16 v1, 0x6c

    aput-char v1, v0, v4

    const/16 v1, 0x74

    aput-char v1, v0, v5

    const/16 v1, 0x3b

    aput-char v1, v0, v6

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    .line 50
    new-array v0, v7, [C

    const/16 v1, 0x26

    aput-char v1, v0, v3

    const/16 v1, 0x67

    aput-char v1, v0, v4

    const/16 v1, 0x74

    aput-char v1, v0, v5

    const/16 v1, 0x3b

    aput-char v1, v0, v6

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    const/4 v0, 0x6

    .line 55
    new-array v0, v0, [C

    const/16 v1, 0x26

    aput-char v1, v0, v3

    const/16 v1, 0x71

    aput-char v1, v0, v4

    const/16 v1, 0x75

    aput-char v1, v0, v5

    const/16 v1, 0x6f

    aput-char v1, v0, v6

    const/16 v1, 0x74

    aput-char v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    const/4 v0, 0x6

    .line 60
    new-array v0, v0, [C

    const/16 v1, 0x26

    aput-char v1, v0, v3

    const/16 v1, 0x61

    aput-char v1, v0, v4

    const/16 v1, 0x70

    aput-char v1, v0, v5

    const/16 v1, 0x6f

    aput-char v1, v0, v6

    const/16 v1, 0x73

    aput-char v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    const/4 v0, 0x5

    .line 65
    new-array v0, v0, [C

    const/16 v1, 0x26

    aput-char v1, v0, v3

    const/16 v1, 0x61

    aput-char v1, v0, v4

    const/16 v1, 0x6d

    aput-char v1, v0, v5

    const/16 v1, 0x70

    aput-char v1, v0, v6

    const/16 v1, 0x3b

    aput-char v1, v0, v7

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    const/4 v0, 0x5

    .line 70
    new-array v0, v0, [C

    const/16 v1, 0x3c

    aput-char v1, v0, v3

    const/16 v1, 0x21

    aput-char v1, v0, v4

    const/16 v1, 0x2d

    aput-char v1, v0, v5

    const/16 v1, 0x2d

    aput-char v1, v0, v6

    const/16 v1, 0x20

    aput-char v1, v0, v7

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->OPEN:[C

    .line 75
    new-array v0, v7, [C

    const/16 v1, 0x20

    aput-char v1, v0, v3

    const/16 v1, 0x2d

    aput-char v1, v0, v4

    const/16 v1, 0x2d

    aput-char v1, v0, v5

    const/16 v1, 0x3e

    aput-char v1, v0, v6

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter;->CLOSE:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    .line 112
    new-instance v0, Lorg/simpleframework/xml/stream/Indenter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    .line 113
    new-instance v0, Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    .line 114
    invoke-virtual {p2}, Lorg/simpleframework/xml/stream/Format;->getProlog()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private append(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append(C)V

    .line 363
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private append([C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/OutputBuffer;->append([C)V

    .line 374
    return-void
.end method

.method private data(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "<![CDATA["

    .line 397
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "]]>"

    .line 399
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private escape(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->symbol(C)[C

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    .line 434
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write([C)V

    goto :goto_0
.end method

.method private escape(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    .line 414
    :goto_0
    if-lt v0, v1, :cond_0

    .line 417
    return-void

    .line 415
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->escape(C)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 474
    if-nez p1, :cond_0

    .line 477
    return v1

    .line 475
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isText(C)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 490
    sparse-switch p1, :sswitch_data_0

    const/16 v2, 0x20

    .line 495
    if-gt p1, v2, :cond_1

    .line 498
    :cond_0
    return v0

    .line 493
    :sswitch_0
    return v1

    :cond_1
    const/16 v2, 0x7e

    .line 495
    if-gt p1, v2, :cond_0

    const/16 v2, 0xf7

    .line 496
    if-ne p1, v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 490
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private symbol(C)[C
    .locals 1

    .prologue
    .line 511
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    .line 523
    return-object v0

    .line 513
    :sswitch_0
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->LESS:[C

    return-object v0

    .line 515
    :sswitch_1
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->GREATER:[C

    return-object v0

    .line 517
    :sswitch_2
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->DOUBLE:[C

    return-object v0

    .line 519
    :sswitch_3
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->SINGLE:[C

    return-object v0

    .line 521
    :sswitch_4
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->AND:[C

    return-object v0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private unicode(C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private write(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 305
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 306
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 307
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 331
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 332
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 345
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 347
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method

.method private write([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 318
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 319
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 320
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputBuffer;->write(Ljava/io/Writer;)V

    .line 446
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->buffer:Lorg/simpleframework/xml/stream/OutputBuffer;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputBuffer;->clear()V

    .line 447
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->result:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 448
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x22

    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_0

    .line 197
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 198
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 200
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 201
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 203
    return-void

    .line 195
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string/jumbo v1, "Start element required"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->top()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v1, v2, :cond_0

    .line 146
    :goto_0
    if-nez v0, :cond_1

    .line 152
    :goto_1
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->COMMENT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 153
    return-void

    .line 144
    :cond_0
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->OPEN:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append([C)V

    .line 149
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->CLOSE:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append([C)V

    goto :goto_1
.end method

.method public writeEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3e

    const/16 v3, 0x2f

    .line 277
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->pop()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v1, v2, :cond_1

    .line 286
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_2

    .line 293
    :goto_1
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->END:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 294
    return-void

    .line 280
    :cond_0
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 281
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    goto :goto_1

    .line 284
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 288
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 289
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    goto :goto_1
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x22

    .line 216
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-ne v0, v1, :cond_0

    .line 219
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 220
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter;->NAMESPACE:[C

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write([C)V

    .line 222
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :goto_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 227
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 228
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 230
    return-void

    .line 217
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string/jumbo v1, "Start element required"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    .line 224
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeProlog()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->prolog:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "\n"

    .line 128
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->indenter:Lorg/simpleframework/xml/stream/Indenter;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Indenter;->push()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v1, v2, :cond_0

    .line 171
    :goto_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Formatter;->flush()V

    .line 172
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 173
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    .line 175
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :goto_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 181
    return-void

    .line 169
    :cond_0
    const/16 v1, 0x3e

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/stream/Formatter;->append(Ljava/lang/String;)V

    .line 177
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->append(C)V

    goto :goto_1
.end method

.method public writeText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/Formatter;->writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V

    .line 243
    return-void
.end method

.method public writeText(Ljava/lang/String;Lorg/simpleframework/xml/stream/Mode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    sget-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    if-eq v0, v1, :cond_0

    .line 258
    :goto_0
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    if-eq p2, v0, :cond_1

    .line 261
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->escape(Ljava/lang/String;)V

    .line 263
    :goto_1
    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Formatter;->last:Lorg/simpleframework/xml/stream/Formatter$Tag;

    .line 264
    return-void

    .line 256
    :cond_0
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Formatter;->write(C)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/Formatter;->data(Ljava/lang/String;)V

    goto :goto_1
.end method
