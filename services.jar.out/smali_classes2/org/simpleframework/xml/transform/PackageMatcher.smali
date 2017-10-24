.class Lorg/simpleframework/xml/transform/PackageMatcher;
.super Ljava/lang/Object;
.source "PackageMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private matchEnum(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    .line 114
    :cond_0
    return-object v1

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lorg/simpleframework/xml/transform/EnumTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/EnumTransform;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 108
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/transform/EnumTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/EnumTransform;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private matchFile(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v0, Ljava/io/File;

    .line 255
    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 258
    return-object v0

    .line 256
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/FileTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FileTransform;-><init>()V

    return-object v0
.end method

.method private matchLanguage(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v0, Ljava/lang/Boolean;

    .line 129
    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    .line 132
    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    .line 135
    if-eq p1, v0, :cond_2

    const-class v0, Ljava/lang/Double;

    .line 138
    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Float;

    .line 141
    if-eq p1, v0, :cond_4

    const-class v0, Ljava/lang/Short;

    .line 144
    if-eq p1, v0, :cond_5

    const-class v0, Ljava/lang/Byte;

    .line 147
    if-eq p1, v0, :cond_6

    const-class v0, Ljava/lang/Character;

    .line 150
    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/String;

    .line 153
    if-eq p1, v0, :cond_8

    const-class v0, Ljava/lang/Class;

    .line 156
    if-eq p1, v0, :cond_9

    const/4 v0, 0x0

    .line 159
    return-object v0

    .line 130
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/BooleanTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BooleanTransform;-><init>()V

    return-object v0

    .line 133
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/transform/IntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/IntegerTransform;-><init>()V

    return-object v0

    .line 136
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/transform/LongTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LongTransform;-><init>()V

    return-object v0

    .line 139
    :cond_3
    new-instance v0, Lorg/simpleframework/xml/transform/DoubleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/DoubleTransform;-><init>()V

    return-object v0

    .line 142
    :cond_4
    new-instance v0, Lorg/simpleframework/xml/transform/FloatTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/FloatTransform;-><init>()V

    return-object v0

    .line 145
    :cond_5
    new-instance v0, Lorg/simpleframework/xml/transform/ShortTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ShortTransform;-><init>()V

    return-object v0

    .line 148
    :cond_6
    new-instance v0, Lorg/simpleframework/xml/transform/ByteTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ByteTransform;-><init>()V

    return-object v0

    .line 151
    :cond_7
    new-instance v0, Lorg/simpleframework/xml/transform/CharacterTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CharacterTransform;-><init>()V

    return-object v0

    .line 154
    :cond_8
    new-instance v0, Lorg/simpleframework/xml/transform/StringTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/StringTransform;-><init>()V

    return-object v0

    .line 157
    :cond_9
    new-instance v0, Lorg/simpleframework/xml/transform/ClassTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/ClassTransform;-><init>()V

    return-object v0
.end method

.method private matchMath(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v0, Ljava/math/BigDecimal;

    .line 174
    if-eq p1, v0, :cond_0

    const-class v0, Ljava/math/BigInteger;

    .line 177
    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 180
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/BigDecimalTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BigDecimalTransform;-><init>()V

    return-object v0

    .line 178
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/transform/BigIntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/BigIntegerTransform;-><init>()V

    return-object v0
.end method

.method private matchSQL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v0, Ljava/sql/Time;

    .line 231
    if-eq p1, v0, :cond_0

    const-class v0, Ljava/sql/Date;

    .line 234
    if-eq p1, v0, :cond_1

    const-class v0, Ljava/sql/Timestamp;

    .line 237
    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    .line 240
    return-object v0

    .line 232
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 235
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 238
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private matchURL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v0, Ljava/net/URL;

    .line 273
    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 276
    return-object v0

    .line 274
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/URLTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/URLTransform;-><init>()V

    return-object v0
.end method

.method private matchUtility(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-class v0, Ljava/util/Date;

    .line 195
    if-eq p1, v0, :cond_0

    const-class v0, Ljava/util/Locale;

    .line 198
    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/Currency;

    .line 201
    if-eq p1, v0, :cond_2

    const-class v0, Ljava/util/GregorianCalendar;

    .line 204
    if-eq p1, v0, :cond_3

    const-class v0, Ljava/util/TimeZone;

    .line 207
    if-eq p1, v0, :cond_4

    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 213
    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    .line 216
    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/transform/DateTransform;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DateTransform;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/transform/LocaleTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/LocaleTransform;-><init>()V

    return-object v0

    .line 202
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/transform/CurrencyTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/CurrencyTransform;-><init>()V

    return-object v0

    .line 205
    :cond_3
    new-instance v0, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/GregorianCalendarTransform;-><init>()V

    return-object v0

    .line 208
    :cond_4
    new-instance v0, Lorg/simpleframework/xml/transform/TimeZoneTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/TimeZoneTransform;-><init>()V

    return-object v0

    .line 211
    :cond_5
    new-instance v0, Lorg/simpleframework/xml/transform/AtomicIntegerTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/AtomicIntegerTransform;-><init>()V

    return-object v0

    .line 214
    :cond_6
    new-instance v0, Lorg/simpleframework/xml/transform/AtomicLongTransform;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/AtomicLongTransform;-><init>()V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java.lang"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "java.util"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "java.net"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "java.io"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "java.sql"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "java.math"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchEnum(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchLanguage(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchUtility(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 80
    :cond_2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchURL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 83
    :cond_3
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchFile(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 86
    :cond_4
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchSQL(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0

    .line 89
    :cond_5
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/PackageMatcher;->matchMath(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    return-object v0
.end method
