.class public final enum Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;
.super Ljava/lang/Enum;
.source "StoreMainModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEBUG_TEST_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

.field public static final enum MODEL_PARTIAL_MIX:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

.field public static final enum MODEL_PARTIAL_REMOVE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

.field public static final enum MODEL_PARTIAL_REORDER:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

.field public static final enum MODEL_PARTIAL_UPDATE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 816
    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    const-string v1, "MODEL_PARTIAL_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_UPDATE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    const-string v1, "MODEL_PARTIAL_REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_REMOVE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    const-string v1, "MODEL_PARTIAL_REORDER"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_REORDER:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    const-string v1, "MODEL_PARTIAL_MIX"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_MIX:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    .line 815
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_UPDATE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_REMOVE:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_REORDER:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->MODEL_PARTIAL_MIX:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->$VALUES:[Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 815
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 815
    const-class v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->$VALUES:[Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$DEBUG_TEST_MODE;

    return-object v0
.end method
