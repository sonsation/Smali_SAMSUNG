.class public Lsun/net/ftp/impl/FtpClient;
.super Lsun/net/ftp/FtpClient;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/impl/FtpClient$1;,
        Lsun/net/ftp/impl/FtpClient$DefaultParser;,
        Lsun/net/ftp/impl/FtpClient$FtpFileIterator;,
        Lsun/net/ftp/impl/FtpClient$MLSxParser;
    }
.end annotation


# static fields
.field private static MDTMformats:[Ljava/lang/String;

.field private static dateFormats:[Ljava/text/SimpleDateFormat;

.field private static defaultConnectTimeout:I

.field private static defaultSoTimeout:I

.field private static encoding:Ljava/lang/String;

.field private static epsvPat:Ljava/util/regex/Pattern;

.field private static linkp:Ljava/util/regex/Pattern;

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field private static pasvPat:Ljava/util/regex/Pattern;

.field private static patStrings:[Ljava/lang/String;

.field private static patternGroups:[[I

.field private static patterns:[Ljava/util/regex/Pattern;

.field private static transPat:Ljava/util/regex/Pattern;


# instance fields
.field private connectTimeout:I

.field private df:Ljava/text/DateFormat;

.field private in:Ljava/io/InputStream;

.field private lastFileName:Ljava/lang/String;

.field private lastReplyCode:Lsun/net/ftp/FtpReplyCode;

.field private lastTransSize:J

.field private loggedIn:Z

.field private mlsxParser:Lsun/net/ftp/FtpDirParser;

.field private oldSocket:Ljava/net/Socket;

.field private out:Ljava/io/PrintStream;

.field private parser:Lsun/net/ftp/FtpDirParser;

.field private final passiveMode:Z

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private replyPending:Z

.field private restartOffset:J

.field private server:Ljava/net/Socket;

.field private serverAddr:Ljava/net/InetSocketAddress;

.field private serverResponse:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sslFact:Ljavax/net/ssl/SSLSocketFactory;

.field private type:Lsun/net/ftp/FtpClient$TransferType;

.field private useCrypto:Z

.field private welcomeMsg:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get2()[[I
    .locals 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get4(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic -get5(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    const-string v4, "sun.net.ftp.FtpClient"

    invoke-static {v4}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v4

    .line 56
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    .line 66
    const-string v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 91
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 93
    const-string v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d\\d:\\d\\d)\\s*(\\p{Print}*)"

    aput-object v5, v4, v7

    .line 95
    const-string v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d{4})\\s*(\\p{Print}*)"

    aput-object v5, v4, v8

    .line 97
    const-string v5, "(\\d{2}/\\d{2}/\\d{4})\\s*(\\d{2}:\\d{2}[ap])\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    aput-object v5, v4, v11

    .line 99
    const-string v5, "(\\d{2}-\\d{2}-\\d{2})\\s*(\\d{2}:\\d{2}[AP]M)\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 91
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    .line 101
    const/4 v4, 0x4

    new-array v4, v4, [[I

    .line 104
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v7

    .line 105
    new-array v5, v9, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v8

    .line 106
    new-array v5, v9, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v11

    .line 107
    new-array v5, v9, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 101
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    .line 109
    const-string v4, "(\\p{Print}+) \\-\\> (\\p{Print}+)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    .line 113
    filled-new-array {v7, v7}, [I

    move-result-object v3

    .line 114
    .local v3, "vals":[I
    new-array v1, v8, [Ljava/lang/String;

    aput-object v10, v1, v7

    .line 117
    .local v1, "encs":[Ljava/lang/String;
    new-instance v4, Lsun/net/ftp/impl/FtpClient$1;

    invoke-direct {v4, v3, v1}, Lsun/net/ftp/impl/FtpClient$1;-><init>([I[Ljava/lang/String;)V

    .line 116
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 126
    aget v4, v3, v7

    if-nez v4, :cond_1

    .line 127
    const/4 v4, -0x1

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    .line 132
    :goto_0
    aget v4, v3, v8

    if-nez v4, :cond_2

    .line 133
    const/4 v4, -0x1

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    .line 138
    :goto_1
    aget-object v4, v1, v7

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 140
    :try_start_0
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-static {v4}, Lsun/net/ftp/impl/FtpClient;->isASCIISuperset(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    const-string v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_2
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/util/regex/Pattern;

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    .line 148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 149
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    sget-object v5, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 129
    .end local v2    # "i":I
    :cond_1
    aget v4, v3, v7

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    goto :goto_0

    .line 135
    :cond_2
    aget v4, v3, v8

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    goto :goto_2

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_3
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 555
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 556
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 1754
    new-array v4, v11, [Ljava/lang/String;

    .line 1755
    const-string v5, "yyyyMMddHHmmss.SSS"

    aput-object v5, v4, v7

    .line 1756
    const-string v5, "yyyyMMddHHmmss"

    aput-object v5, v4, v8

    .line 1754
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    .line 1758
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 1761
    const/4 v2, 0x0

    :goto_4
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 1762
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 1763
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v4, v4, v2

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1761
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 52
    :cond_4
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x7
        0x4
        0x5
        0x6
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x7
        0x4
        0x5
        0x0
        0x6
        0x1
        0x2
        0x3
    .end array-data

    .line 106
    :array_2
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 107
    :array_3
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 818
    invoke-direct {p0}, Lsun/net/ftp/FtpClient;-><init>()V

    .line 62
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 63
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 69
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 70
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 71
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    .line 77
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 83
    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->passiveMode:Z

    .line 84
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 110
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    .line 369
    new-instance v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;

    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 370
    new-instance v0, Lsun/net/ftp/impl/FtpClient$MLSxParser;

    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    .line 818
    return-void
.end method

.method public static create()Lsun/net/ftp/FtpClient;
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lsun/net/ftp/impl/FtpClient;

    invoke-direct {v0}, Lsun/net/ftp/impl/FtpClient;-><init>()V

    return-object v0
.end method

.method private createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 800
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_0

    .line 801
    new-instance v0, Lsun/net/TelnetInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 803
    :cond_0
    return-object p1
.end method

.method private createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 807
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_0

    .line 808
    new-instance v0, Lsun/net/TelnetOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0

    .line 810
    :cond_0
    return-object p1
.end method

.method private disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 978
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 981
    :cond_0
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 982
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 983
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    .line 984
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 985
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 986
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 987
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 988
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 989
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 977
    return-void
.end method

.method private doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_2

    .line 938
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_1

    .line 940
    new-instance v1, Lsun/net/ftp/impl/FtpClient$4;

    invoke-direct {v1, p0}, Lsun/net/ftp/impl/FtpClient$4;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 939
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 956
    .local v0, "s":Ljava/net/Socket;
    :goto_0
    if-ltz p2, :cond_3

    .line 957
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 969
    :goto_1
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v1, :cond_6

    .line 970
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 974
    :cond_0
    :goto_2
    return-object v0

    .line 947
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    .line 950
    .end local v0    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    .line 959
    :cond_3
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v1, :cond_4

    .line 960
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 962
    :cond_4
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v1, :cond_5

    .line 963
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 965
    :cond_5
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 971
    :cond_6
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v1, :cond_0

    .line 972
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2
.end method

.method private getResponseString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getResponseStrings()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    return-object v0
.end method

.method private getSecurityData()[B
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 1920
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v2

    .line 1921
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADAT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1922
    new-instance v0, Lsun/misc/BASE64Decoder;

    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 1926
    .local v0, "decoder":Lsun/misc/BASE64Decoder;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1927
    :catch_0
    move-exception v1

    .line 1931
    .end local v0    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getTransferName()V
    .locals 4

    .prologue
    .line 398
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "response":Ljava/lang/String;
    const-string v3, "unique file name:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "i":I
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 402
    .local v0, "e":I
    if-ltz v1, :cond_0

    .line 403
    add-int/lit8 v1, v1, 0x11

    .line 404
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 397
    :cond_0
    return-void
.end method

.method private getTransferSize()V
    .locals 6

    .prologue
    .line 374
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 381
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "response":Ljava/lang/String;
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    if-nez v3, :cond_0

    .line 383
    const-string v3, "150 Opening .*\\((\\d+) bytes\\)."

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 385
    :cond_0
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 386
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 373
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static isASCIISuperset(Ljava/lang/String;)Z
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    .line 176
    .local v2, "chkS":Ljava/lang/String;
    const/16 v3, 0x51

    new-array v1, v3, [B

    .local v1, "chkB":[B
    fill-array-data v1, :array_0

    .line 182
    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 176
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x2dt
        0x5ft
        0x2et
        0x21t
        0x7et
        0x2at
        0x27t
        0x28t
        0x29t
        0x3bt
        0x2ft
        0x3ft
        0x3at
        0x40t
        0x26t
        0x3dt
        0x2bt
        0x24t
        0x2ct
    .end array-data
.end method

.method private issueCommand(Ljava/lang/String;)Z
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/net/ftp/FtpProtocolException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_0
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v2, :cond_1

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_1
    :goto_0
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 535
    new-instance v1, Lsun/net/ftp/FtpProtocolException;

    const-string v2, "Illegal FTP command"

    invoke-direct {v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    .line 536
    .local v1, "ex":Lsun/net/ftp/FtpProtocolException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal carriage return"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 537
    throw v1

    .line 529
    .end local v1    # "ex":Lsun/net/ftp/FtpProtocolException;
    :catch_0
    move-exception v0

    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    goto :goto_0

    .line 539
    .end local v0    # "e":Lsun/net/ftp/FtpProtocolException;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->sendServer(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v2

    return v2
.end method

.method private issueCommandCheck(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 550
    :cond_0
    return-void
.end method

.method private openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 717
    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 718
    :catch_0
    move-exception v2

    .line 721
    .local v2, "e":Lsun/net/ftp/FtpProtocolException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "errmsg":Ljava/lang/String;
    const-string v9, "PASV"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "EPSV"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 731
    :cond_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_2

    .line 735
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    const-string v10, "Passive mode failed"

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 723
    :cond_1
    throw v2

    .line 739
    :cond_2
    new-instance v8, Ljava/net/ServerSocket;

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct {v8, v11, v12, v9}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 741
    .local v8, "portSocket":Ljava/net/ServerSocket;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 742
    .local v6, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 743
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 752
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EPRT |"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    instance-of v9, v6, Ljava/net/Inet6Address;

    if-eqz v9, :cond_7

    const-string v9, "2"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 753
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 752
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 753
    const-string v10, "|"

    .line 752
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 753
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    .line 752
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 753
    const-string v10, "|"

    .line 752
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 754
    .local v7, "portCmd":Ljava/lang/String;
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 771
    :goto_1
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v9, :cond_a

    .line 772
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 778
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 779
    .local v1, "clientSocket":Ljava/net/Socket;
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v9, :cond_b

    .line 780
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 789
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v9, :cond_6

    .line 791
    :try_start_2
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v10, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v1, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 796
    :cond_6
    return-object v1

    .line 752
    .end local v1    # "clientSocket":Ljava/net/Socket;
    .end local v7    # "portCmd":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string v9, "1"

    goto :goto_0

    .line 756
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_8
    const-string v7, "PORT "

    .line 757
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 760
    .local v0, "addr":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v9, v0

    if-ge v5, v9, :cond_9

    .line 761
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v0, v5

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 760
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 765
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 766
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 786
    .end local v0    # "addr":[B
    .end local v5    # "i":I
    .end local v6    # "myAddress":Ljava/net/InetAddress;
    .end local v7    # "portCmd":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 787
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 786
    throw v9

    .line 774
    .restart local v6    # "myAddress":Ljava/net/InetAddress;
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_a
    :try_start_4
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v9, :cond_4

    .line 775
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    goto/16 :goto_2

    .line 782
    .restart local v1    # "clientSocket":Ljava/net/Socket;
    :cond_b
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v9, :cond_5

    .line 783
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 792
    :catch_1
    move-exception v4

    .line 793
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 568
    const/4 v1, 0x0

    .line 581
    .local v1, "dest":Ljava/net/InetSocketAddress;
    const-string v9, "EPSV ALL"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 583
    const-string v9, "EPSV"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    if-nez v9, :cond_0

    .line 593
    const-string v9, "^229 .* \\(\\|\\|\\|(\\d+)\\|\\)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 595
    :cond_0
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 596
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1

    .line 597
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EPSV failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 600
    :cond_1
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 602
    .local v4, "port":I
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 603
    .local v0, "add":Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    .line 604
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 644
    .end local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_9

    .line 645
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_8

    .line 647
    new-instance v9, Lsun/net/ftp/impl/FtpClient$2;

    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$2;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 646
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Socket;

    .line 661
    .local v6, "s":Ljava/net/Socket;
    :goto_1
    new-instance v9, Lsun/net/ftp/impl/FtpClient$3;

    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$3;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 660
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 670
    .local v7, "serverAddress":Ljava/net/InetAddress;
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v7, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 672
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v9, :cond_a

    .line 673
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 681
    :goto_2
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v9, :cond_c

    .line 682
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 686
    :cond_2
    :goto_3
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v9, :cond_3

    .line 688
    :try_start_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v6, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 693
    :cond_3
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 694
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 695
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v9

    sget-object v10, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    if-ne v9, v10, :cond_d

    .line 697
    new-instance v9, Ljava/io/FileNotFoundException;

    invoke-direct {v9, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 610
    .end local v6    # "s":Ljava/net/Socket;
    .end local v7    # "serverAddress":Ljava/net/InetAddress;
    .restart local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_4
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 614
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "port":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "serverAnswer":Ljava/lang/String;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_5
    const-string v9, "PASV"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v8

    .line 629
    .restart local v8    # "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    if-nez v9, :cond_6

    .line 630
    const-string v9, "227 .* \\(?(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 632
    :cond_6
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 633
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_7

    .line 634
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PASV failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 637
    :cond_7
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    add-int v4, v9, v10

    .line 639
    .restart local v4    # "port":I
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 640
    .restart local v5    # "s":Ljava/lang/String;
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto/16 :goto_0

    .line 654
    :cond_8
    new-instance v6, Ljava/net/Socket;

    sget-object v9, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v6, v9}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_1

    .line 657
    .end local v6    # "s":Ljava/net/Socket;
    :cond_9
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_1

    .line 675
    .restart local v7    # "serverAddress":Ljava/net/InetAddress;
    :cond_a
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v9, :cond_b

    .line 676
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto/16 :goto_2

    .line 678
    :cond_b
    invoke-virtual {v6, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_2

    .line 683
    :cond_c
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v9, :cond_2

    .line 684
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_3

    .line 689
    :catch_0
    move-exception v2

    .line 690
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t open secure data channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 699
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v9

    .line 701
    :cond_e
    return-object v6
.end method

.method private readReply()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 498
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readServerResponse()I

    move-result v0

    invoke-static {v0}, Lsun/net/ftp/FtpReplyCode;->find(I)Lsun/net/ftp/FtpReplyCode;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 500
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositivePreliminary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 502
    return v2

    .line 504
    :cond_0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveIntermediate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    :cond_1
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_2

    .line 506
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferName()V

    .line 508
    :cond_2
    return v2

    .line 510
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private readServerResponse()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 413
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 415
    .local v5, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 419
    .local v2, "continuingCode":I
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v10}, Ljava/util/Vector;->setSize(I)V

    .line 421
    :cond_0
    :goto_0
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_2

    .line 422
    const/16 v7, 0xd

    if-ne v0, v7, :cond_1

    .line 423
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v14, :cond_1

    .line 424
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    :cond_1
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    if-ne v0, v14, :cond_0

    .line 432
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 434
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 438
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 439
    const/4 v1, -0x1

    .line 451
    .local v1, "code":I
    :goto_1
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 452
    if-eq v2, v12, :cond_7

    .line 454
    if-ne v1, v2, :cond_0

    .line 455
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_4

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    .line 459
    :cond_4
    const/4 v2, -0x1

    .line 470
    :cond_5
    return v1

    .line 442
    .end local v1    # "code":I
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .restart local v1    # "code":I
    goto :goto_1

    .line 443
    .end local v1    # "code":I
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_1

    .line 462
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_5

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_5

    .line 463
    move v2, v1

    .line 464
    goto/16 :goto_0

    .line 445
    .end local v1    # "code":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private sendSecurityData([B)Z
    .locals 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/net/ftp/FtpProtocolException;
        }
    .end annotation

    .prologue
    .line 1914
    new-instance v0, Lsun/misc/BASE64Encoder;

    invoke-direct {v0}, Lsun/misc/BASE64Encoder;-><init>()V

    .line 1915
    .local v0, "encoder":Lsun/misc/BASE64Encoder;
    invoke-virtual {v0, p1}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 1916
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private sendServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 476
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method private tryConnect(Ljava/net/InetSocketAddress;I)V
    .locals 5
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 925
    :cond_0
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 927
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 928
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v4, 0x1

    .line 927
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 921
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private tryLogin(Ljava/lang/String;[C)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_0

    .line 1036
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1029
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1565
    const-string v0, "ABOR"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1584
    return-object p0
.end method

.method public allocate(J)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALLO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2136
    return-object p0
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    .line 1390
    .local v3, "s":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 1391
    .local v2, "remote":Ljava/io/OutputStream;
    const/16 v4, 0x3a98

    new-array v0, v4, [B

    .line 1393
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_1

    .line 1394
    if-lez v1, :cond_0

    .line 1395
    invoke-virtual {v2, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1398
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1399
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v4

    return-object v4
.end method

.method public changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "remoteDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directory can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CWD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1162
    return-object p0
.end method

.method public changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    const-string v0, "CDUP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1173
    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1130
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    :try_start_0
    const-string v1, "QUIT"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1137
    :cond_0
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 1129
    return-void

    .line 1133
    :catch_0
    move-exception v0

    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    goto :goto_0
.end method

.method public completePending()Lsun/net/ftp/FtpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1621
    :cond_0
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v0, :cond_1

    .line 1622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 1623
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1627
    :cond_1
    return-object p0
.end method

.method public connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .locals 1
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/impl/FtpClient;->connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_0
    nop

    nop

    .end local p1    # "dest":Ljava/net/SocketAddress;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    .line 1020
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p2}, Lsun/net/ftp/impl/FtpClient;->tryConnect(Ljava/net/InetSocketAddress;I)V

    .line 1021
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Welcome message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1023
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 1022
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1025
    :cond_1
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1026
    return-object p0
.end method

.method public deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1425
    return-object p0
.end method

.method public enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "passive"    # Z

    .prologue
    .line 842
    return-object p0
.end method

.method public endSecureSession()Lsun/net/ftp/FtpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2105
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-nez v1, :cond_0

    .line 2106
    return-object p0

    .line 2109
    :cond_0
    const-string v1, "CCC"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2110
    const-string v1, "PROT C"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2113
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2114
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2116
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2117
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v4, 0x1

    .line 2116
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2121
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2123
    return-object p0

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    return v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "FEAT"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1546
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v2

    .line 1549
    .local v2, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 1550
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1552
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1554
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a98

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1233
    iget-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    .line 1236
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1238
    .local v3, "s":Ljava/net/Socket;
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1241
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1242
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 1243
    .local v2, "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 1245
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_1

    .line 1246
    if-lez v1, :cond_0

    .line 1247
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1237
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v2    # "remote":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :catchall_0
    move-exception v4

    .line 1238
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1237
    throw v4

    .line 1250
    .restart local v0    # "buf":[B
    .restart local v1    # "l":I
    .restart local v2    # "remote":Ljava/io/InputStream;
    .restart local v3    # "s":Ljava/net/Socket;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1264
    :goto_1
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v4

    return-object v4

    .line 1252
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v2    # "remote":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    .line 1253
    .restart local v3    # "s":Ljava/net/Socket;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1254
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 1255
    .restart local v2    # "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 1257
    .restart local v0    # "buf":[B
    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .restart local v1    # "l":I
    if-ltz v1, :cond_4

    .line 1258
    if-lez v1, :cond_3

    .line 1259
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 1262
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1
.end method

.method public getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1280
    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 1282
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1284
    .local v0, "s":Ljava/net/Socket;
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1286
    if-nez v0, :cond_0

    .line 1287
    return-object v4

    .line 1283
    .end local v0    # "s":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    .line 1284
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1283
    throw v1

    .line 1289
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1290
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1291
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1294
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1295
    .restart local v0    # "s":Ljava/net/Socket;
    if-nez v0, :cond_2

    .line 1296
    return-object v4

    .line 1298
    :cond_2
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1299
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HELP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2203
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 2204
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2206
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2210
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2211
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 2212
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2214
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLastFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDTM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1781
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v4, v5, :cond_1

    .line 1782
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1783
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1784
    .local v0, "d":Ljava/util/Date;
    sget-object v5, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 1786
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1789
    :goto_1
    if-eqz v0, :cond_0

    .line 1790
    return-object v0

    .line 1787
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/text/ParseException;
    goto :goto_1

    .line 1784
    .end local v2    # "ex":Ljava/text/ParseException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1794
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public getLastResponseString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2007
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2008
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 2009
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2010
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2011
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2015
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLastTransferSize()J
    .locals 2

    .prologue
    .line 2027
    iget-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    return v0
.end method

.method public getServerAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1002
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1743
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1744
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "path can\'t be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1746
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v1, v2, :cond_2

    .line 1748
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1750
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 1752
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1482
    if-nez p1, :cond_0

    const-string v3, "STAT"

    :goto_0
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1507
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 1508
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1509
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 1510
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1482
    .end local v0    # "i":I
    .end local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STAT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1512
    .restart local v0    # "i":I
    .restart local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSystem()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2164
    const-string v1, "SYST"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2168
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 2170
    .local v0, "resp":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWelcomeMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    const-string v1, "PWD"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, "answ":Ljava/lang/String;
    const-string v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1193
    const/4 v1, 0x0

    return-object v1

    .line 1195
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    return v0
.end method

.method public isPassiveModeEnabled()Z
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x1

    return v0
.end method

.method public list(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1698
    if-nez p1, :cond_0

    const-string v1, "LIST"

    :goto_0
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1699
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_1

    .line 1700
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1698
    .end local v0    # "s":Ljava/net/Socket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1702
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_1
    return-object v3
.end method

.method public listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lsun/net/ftp/FtpDirEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1890
    const/4 v1, 0x0

    .line 1891
    .local v1, "s":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 1893
    .local v2, "sin":Ljava/io/BufferedReader;
    if-nez p1, :cond_0

    :try_start_0
    const-string v3, "MLSD"

    :goto_0
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1899
    .end local v1    # "s":Ljava/net/Socket;
    :goto_1
    if-eqz v1, :cond_1

    .line 1900
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1901
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v3

    .line 1893
    .restart local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MLSD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1903
    .end local v1    # "s":Ljava/net/Socket;
    :cond_1
    if-nez p1, :cond_2

    const-string v3, "LIST"

    :goto_2
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 1904
    .local v1, "s":Ljava/net/Socket;
    if-eqz v1, :cond_3

    .line 1905
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1906
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v3

    .line 1903
    .end local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1909
    .restart local v1    # "s":Ljava/net/Socket;
    :cond_3
    return-object v5

    .line 1894
    .local v1, "s":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .local v0, "FtpException":Lsun/net/ftp/FtpProtocolException;
    goto :goto_1
.end method

.method public login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1051
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1052
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    const-string v4, "Not connected yet"

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v3

    .line 1054
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1055
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "User name can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1057
    :cond_2
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1062
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1063
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1064
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1065
    .local v1, "l":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1066
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_3

    const-string v3, "230"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1068
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1070
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    .end local v1    # "l":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1074
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1075
    return-object p0
.end method

.method public login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1090
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1091
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    const-string v4, "Not connected yet"

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v3

    .line 1093
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1094
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "User name can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1096
    :cond_2
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1101
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    if-ne v3, v4, :cond_3

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACCT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1107
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1108
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v3, :cond_6

    .line 1109
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1110
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_5

    const-string v3, "230"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1113
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1119
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1120
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1121
    return-object p0
.end method

.method public makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MKD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1438
    return-object p0
.end method

.method public nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NLST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1723
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 1724
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1726
    :cond_0
    return-object v3
.end method

.method public noop()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1462
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1463
    return-object p0
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1358
    if-eqz p3, :cond_1

    const-string v1, "STOU "

    .line 1360
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v6, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v5, v6, :cond_3

    .line 1361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v4

    .line 1362
    .local v4, "s":Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1363
    .local v3, "remote":Ljava/io/OutputStream;
    const/16 v5, 0x3a98

    new-array v0, v5, [B

    .line 1365
    .local v0, "buf":[B
    :cond_0
    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    if-ltz v2, :cond_2

    .line 1366
    if-lez v2, :cond_0

    .line 1367
    invoke-virtual {v3, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1358
    .end local v0    # "buf":[B
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "l":I
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_1
    const-string v1, "STOR "

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1370
    .restart local v0    # "buf":[B
    .restart local v2    # "l":I
    .restart local v3    # "remote":Ljava/io/OutputStream;
    .restart local v4    # "s":Ljava/net/Socket;
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1372
    .end local v0    # "buf":[B
    .end local v2    # "l":I
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_3
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v5

    return-object v5
.end method

.method public putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1330
    if-eqz p2, :cond_0

    const-string v1, "STOU "

    .line 1331
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    .line 1332
    .local v2, "s":Ljava/net/Socket;
    if-nez v2, :cond_1

    .line 1333
    return-object v4

    .line 1330
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "s":Ljava/net/Socket;
    :cond_0
    const-string v1, "STOR "

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1335
    .restart local v2    # "s":Ljava/net/Socket;
    :cond_1
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v4, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 1336
    .local v0, "bm":Z
    :goto_1
    new-instance v3, Lsun/net/TelnetOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v3

    .line 1335
    .end local v0    # "bm":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bm":Z
    goto :goto_1
.end method

.method public reInit()Lsun/net/ftp/FtpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1636
    const-string v2, "REIN"

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1637
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1638
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v2, :cond_0

    .line 1639
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    instance-of v2, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    .line 1640
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 1641
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 1643
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 1644
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 1646
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1647
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v5, 0x1

    .line 1646
    invoke-direct {v2, v3, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 1654
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_0
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 1655
    return-object p0

    .line 1648
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catch_0
    move-exception v0

    .line 1649
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "encoding not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RMD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1452
    return-object p0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNFR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1412
    return-object p0
.end method

.method public setConnectTimeout(I)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 863
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 864
    return-object p0
.end method

.method public setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "p"    # Lsun/net/ftp/FtpDirParser;

    .prologue
    .line 1808
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 1809
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "p"    # Ljava/net/Proxy;

    .prologue
    .line 900
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    .line 901
    return-object p0
.end method

.method public setReadTimeout(I)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 885
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 886
    return-object p0
.end method

.method public setRestartOffset(J)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 1210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_0
    iput-wide p1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1214
    return-object p0
.end method

.method public setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "type"    # Lsun/net/ftp/FtpClient$TransferType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1667
    const-string v0, "NOOP"

    .line 1669
    .local v0, "cmd":Ljava/lang/String;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 1670
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_0

    .line 1671
    const-string v0, "TYPE A"

    .line 1673
    :cond_0
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_1

    .line 1674
    const-string v0, "TYPE I"

    .line 1676
    :cond_1
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_2

    .line 1677
    const-string v0, "TYPE E"

    .line 1679
    :cond_2
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1680
    return-object p0
.end method

.method public siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2228
    return-object p0
.end method

.method public startSecureSession()Lsun/net/ftp/FtpClient;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2057
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2058
    new-instance v4, Lsun/net/ftp/FtpProtocolException;

    const-string v5, "Not connected yet"

    sget-object v6, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v4, v5, v6}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v4

    .line 2060
    :cond_0
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_1

    .line 2062
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    :cond_1
    const-string v4, "AUTH TLS"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2068
    const/4 v2, 0x0

    .line 2070
    .local v2, "s":Ljava/net/Socket;
    :try_start_1
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2079
    .local v2, "s":Ljava/net/Socket;
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2080
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2082
    :try_start_2
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2083
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v7, 0x1

    .line 2082
    invoke-direct {v4, v5, v7, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2087
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2089
    const-string v4, "PBSZ 0"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2090
    const-string v4, "PROT P"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2091
    iput-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2092
    return-object p0

    .line 2063
    .end local v2    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 2064
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2071
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "s":Ljava/net/Socket;
    :catch_1
    move-exception v3

    .line 2073
    .local v3, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2076
    :goto_0
    throw v3

    .line 2074
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2084
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ssle":Ljavax/net/ssl/SSLException;
    .local v2, "s":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 2085
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "encoding not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "struct"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2151
    return-object p0
.end method

.method public useKerberos()Lsun/net/ftp/FtpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1978
    return-object p0
.end method
