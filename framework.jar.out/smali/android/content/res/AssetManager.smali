.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field private static final IS_ELASTIC_ENABLED:Z = false

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static csp:Landroid/util/secutil/CustomizedTextParser;

.field private static final localLOGV:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field private ensuringLock:Ljava/lang/Object;

.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static synthetic -wrap0(Landroid/content/res/AssetManager;J)I
    .locals 1
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->readAssetChar(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/AssetManager;J[BII)I
    .locals 1
    .param p1, "asset"    # J
    .param p3, "b"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->readAsset(J[BII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetRemainingLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Landroid/content/res/AssetManager;JJI)J
    .locals 3
    .param p1, "asset"    # J
    .param p3, "offset"    # J
    .param p5, "whence"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->seekAsset(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->destroyAsset(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 81
    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 825
    sput-object v1, Landroid/content/res/AssetManager;->csp:Landroid/util/secutil/CustomizedTextParser;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 91
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 92
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOverlays:Ljava/util/ArrayList;

    .line 113
    monitor-enter p0

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->init(Z)V

    .line 120
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isSystem"    # Z

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 91
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 92
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOverlays:Ljava/util/ArrayList;

    .line 141
    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->init(Z)V

    .line 134
    return-void
.end method

.method private final addAssetPathInternal(Ljava/lang/String;Z)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "appAsLib"    # Z

    .prologue
    .line 738
    iget-object v2, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    monitor-enter v2

    .line 740
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 741
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->addAssetPathNative(Ljava/lang/String;Z)I

    move-result v0

    .line 742
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 743
    return v0

    .line 740
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 738
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final native addAssetPathNative(Ljava/lang/String;Z)I
.end method

.method static final native applyStyle(JIIJ[I[I[I)Z
.end method

.method static final native applyThemeStyle(JIZ)V
.end method

.method static final native clearTheme(J)V
.end method

.method static final native copyTheme(JJ)V
.end method

.method private final decRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1004
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1007
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 1008
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 1000
    :cond_0
    return-void
.end method

.method private final native deleteTheme(J)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(J)V
.end method

.method static final native dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    .prologue
    .line 125
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 127
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 128
    .local v0, "system":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 129
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(J)J
.end method

.method private final native getAssetRemainingLength(J)J
.end method

.method public static getCustomizedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 830
    sget-object v0, Landroid/content/res/AssetManager;->csp:Landroid/util/secutil/CustomizedTextParser;

    if-nez v0, :cond_0

    .line 831
    invoke-static {}, Landroid/util/secutil/CustomizedTextParser;->getInstance()Landroid/util/secutil/CustomizedTextParser;

    move-result-object v0

    sput-object v0, Landroid/content/res/AssetManager;->csp:Landroid/util/secutil/CustomizedTextParser;

    .line 833
    :cond_0
    sget-object v0, Landroid/content/res/AssetManager;->csp:Landroid/util/secutil/CustomizedTextParser;

    invoke-virtual {v0, p0}, Landroid/util/secutil/CustomizedTextParser;->getCustomizedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnsuredStringBlock(I)Landroid/content/res/StringBlock;
    .locals 2
    .param p1, "block"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->isStringBlockExists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v1, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->isStringBlockExists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 280
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v1

    .line 285
    :cond_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v0, v0, p1

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)J
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 152
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static final native getThemeChangingConfigurations(J)I
.end method

.method private final incRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 997
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 988
    return-void
.end method

.method private final native init(Z)V
.end method

.method private isStringBlockExists(I)Z
    .locals 3
    .param p1, "block"    # I

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v1, :cond_0

    .line 260
    return v2

    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 264
    return v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v2

    .line 269
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I
.end method

.method private final native newTheme()J
.end method

.method private final native openAsset(Ljava/lang/String;I)J
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)J
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)J
.end method

.method private final native readAsset(J[BII)I
.end method

.method private final native readAssetChar(J)I
.end method

.method private final native removeAllOverlaysNative(Ljava/lang/String;)I
.end method

.method static final native resolveAttrs(JII[I[I[I[I)Z
.end method

.method private final native seekAsset(JJI)J
.end method


# virtual methods
.method public final addAssetPath(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 813
    if-nez p1, :cond_0

    .line 814
    return-object v2

    .line 817
    :cond_0
    array-length v2, p1

    new-array v0, v2, [I

    .line 818
    .local v0, "cookies":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 819
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    :cond_1
    return-object v0
.end method

.method public final addOverlayPath(Ljava/lang/String;)I
    .locals 3
    .param p1, "idmapPath"    # Ljava/lang/String;

    .prologue
    .line 763
    iget-object v2, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    monitor-enter v2

    .line 765
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 766
    const/4 v0, -0x1

    .line 767
    .local v0, "res":I
    if-eqz p1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/content/res/AssetManager;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 772
    return v0

    .line 768
    :cond_1
    :try_start_3
    iget-object v1, p0, Landroid/content/res/AssetManager;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addOverlayPathNative(Ljava/lang/String;)I

    move-result v0

    .line 770
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 763
    .end local v0    # "res":I
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final native addOverlayPathNative(Ljava/lang/String;)I
.end method

.method public close()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 164
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 158
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final createTheme()J
    .locals 4

    .prologue
    .line 612
    monitor-enter p0

    .line 613
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 614
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 616
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()J

    move-result-wide v0

    .line 617
    .local v0, "res":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 618
    return-wide v0
.end method

.method final ensureStringBlocks()[Landroid/content/res/StringBlock;
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 353
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v0, v0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit p0

    .line 356
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 640
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 629
    return-void

    .line 641
    :catchall_0
    move-exception v0

    .line 642
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 641
    throw v0
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method public final native getNonSystemLocales()[Ljava/lang/String;
.end method

.method public getOverlays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method

.method final getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .prologue
    .line 381
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getEnsuredStringBlock(I)Landroid/content/res/StringBlock;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 201
    .local v1, "outValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 202
    .local v0, "block":I
    if-gez v0, :cond_0

    .line 203
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 205
    :cond_0
    :try_start_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 206
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 208
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 199
    .end local v0    # "block":I
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 178
    iget-object v2, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 181
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 179
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .param p1, "resId"    # I

    .prologue
    .line 295
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 296
    .local v5, "rawInfoArray":[I
    array-length v6, v5

    .line 297
    .local v6, "rawInfoArrayLen":I
    div-int/lit8 v3, v6, 0x2

    .line 300
    .local v3, "infoArrayLen":I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 301
    .local v7, "retArray":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 302
    aget v0, v5, v1

    .line 303
    .local v0, "block":I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 306
    .local v2, "index":I
    if-ltz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getEnsuredStringBlock(I)Landroid/content/res/StringBlock;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    aput-object v8, v7, v4

    .line 301
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 309
    .end local v0    # "block":I
    .end local v2    # "index":I
    :cond_1
    return-object v7
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 5
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .prologue
    const/4 v3, 0x0

    .line 238
    int-to-short v2, p2

    invoke-direct {p0, p1, v2, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 239
    .local v0, "block":I
    if-gez v0, :cond_0

    .line 240
    return v3

    .line 242
    :cond_0
    iget v2, p3, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 244
    :try_start_0
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getEnsuredStringBlock(I)Landroid/content/res/StringBlock;

    move-result-object v2

    iget v3, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "AssetManager"

    const-string/jumbo v3, "### Crash occurred ###"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string/jumbo v2, "AssetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "### while trying to find resource value #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in StringBlock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string/jumbo v4, ", density = "

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string/jumbo v4, ", resolveRefs = "

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string/jumbo v2, "AssetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "### "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/util/TypedValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v2, "AssetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "### outValue.density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/util/TypedValue;->density:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string/jumbo v2, "AssetManager"

    const-string/jumbo v3, "### -------------- ###"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    throw v1
.end method

.method public final native getSizeConfigurations()[Landroid/content/res/Configuration;
.end method

.method final native getStyleAttributes(I)[I
.end method

.method final getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 3
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I

    move-result v0

    .line 328
    .local v0, "block":I
    if-gez v0, :cond_0

    .line 329
    return v1

    .line 331
    :cond_0
    iget v1, p4, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 335
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getEnsuredStringBlock(I)Landroid/content/res/StringBlock;

    move-result-object v1

    iget v2, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 338
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final makeStringBlocks([Landroid/content/res/StringBlock;)V
    .locals 8
    .param p1, "seed"    # [Landroid/content/res/StringBlock;

    .prologue
    .line 363
    if-eqz p1, :cond_0

    array-length v2, p1

    .line 364
    .local v2, "seedNum":I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 365
    .local v1, "num":I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 369
    if-ge v0, v2, :cond_1

    .line 370
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, p1, v0

    aput-object v4, v3, v0

    .line 368
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v2    # "seedNum":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "seedNum":I
    goto :goto_0

    .line 372
    .restart local v0    # "i":I
    .restart local v1    # "num":I
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    new-instance v4, Landroid/content/res/StringBlock;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/content/res/StringBlock;-><init>(JZ)V

    aput-object v4, v3, v0

    goto :goto_2

    .line 362
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    .line 420
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 421
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 423
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)J

    move-result-wide v0

    .line 424
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 425
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V

    .line 426
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 427
    return-object v2

    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0

    .line 430
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 440
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 441
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 444
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 513
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 515
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)J

    move-result-wide v0

    .line 516
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 517
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V

    .line 518
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 519
    return-object v2

    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0

    .line 522
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset absolute file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 536
    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 538
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 539
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 542
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Assetmanager has been closed"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 595
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)J

    move-result-wide v2

    .line 596
    .local v2, "xmlBlock":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 597
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v2, v3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 598
    .local v0, "res":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->hashCode()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 599
    return-object v0

    .end local v0    # "res":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0

    .line 602
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset XML file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 564
    .local v0, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 565
    .local v1, "rp":Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 566
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(J)V
    .locals 1
    .param p1, "theme"    # J

    .prologue
    .line 623
    monitor-enter p0

    .line 624
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->deleteTheme(J)V

    .line 625
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 622
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final removeOverlayPath(Ljava/lang/String;)I
    .locals 3
    .param p1, "idmapPath"    # Ljava/lang/String;

    .prologue
    .line 790
    iget-object v2, p0, Landroid/content/res/AssetManager;->ensuringLock:Ljava/lang/Object;

    monitor-enter v2

    .line 791
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 792
    :try_start_1
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->removeAllOverlaysNative(Ljava/lang/String;)I

    move-result v0

    .line 793
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 794
    iget-object v1, p0, Landroid/content/res/AssetManager;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 795
    return v0

    .line 791
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 790
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(J[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V
.end method

.method xmlBlockGone(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 606
    monitor-enter p0

    .line 607
    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 605
    return-void

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
