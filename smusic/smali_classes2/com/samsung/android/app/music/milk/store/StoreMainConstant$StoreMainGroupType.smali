.class public final enum Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
.super Ljava/lang/Enum;
.source "StoreMainConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/StoreMainConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreMainGroupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field public static final enum TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 150
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "BANNER"

    invoke-direct {v2, v3, v1, v1}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 151
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "TOP_CHART"

    invoke-direct {v2, v3, v6, v6}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 152
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "NEW_RELEASE"

    invoke-direct {v2, v3, v7, v7}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 153
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "BANNER_SMALL"

    invoke-direct {v2, v3, v8, v8}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 154
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "PICK"

    invoke-direct {v2, v3, v9, v9}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 155
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "RADIO"

    const/4 v4, 0x5

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 156
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "MUSIC_VIDEO"

    const/4 v4, 0x6

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 157
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "MUSIC_CATEGORY"

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 158
    new-instance v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    const-string v3, "LEGAL_NOTICE"

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 149
    const/16 v2, 0x9

    new-array v2, v2, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->TOP_CHART:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->BANNER_SMALL:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->PICK:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->RADIO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->MUSIC_CATEGORY:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->LEGAL_NOTICE:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    .line 161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->valueMap:Ljava/util/Map;

    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 165
    sget-object v4, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->valueMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->mValue:I

    .line 171
    return-void
.end method

.method public static fromValue(I)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 178
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    const-class v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->mValue:I

    return v0
.end method
