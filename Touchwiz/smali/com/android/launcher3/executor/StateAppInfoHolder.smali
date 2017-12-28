.class final enum Lcom/android/launcher3/executor/StateAppInfoHolder;
.super Ljava/lang/Enum;
.source "StateAppInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/executor/StateAppInfoHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/executor/StateAppInfoHolder;

.field public static final enum INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;


# instance fields
.field private mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/android/launcher3/executor/StateAppInfoHolder;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/executor/StateAppInfoHolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/executor/StateAppInfoHolder;

    sget-object v1, Lcom/android/launcher3/executor/StateAppInfoHolder;->INSTANCE:Lcom/android/launcher3/executor/StateAppInfoHolder;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->$VALUES:[Lcom/android/launcher3/executor/StateAppInfoHolder;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/executor/StateAppInfoHolder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/executor/StateAppInfoHolder;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/executor/StateAppInfoHolder;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/launcher3/executor/StateAppInfoHolder;->$VALUES:[Lcom/android/launcher3/executor/StateAppInfoHolder;

    invoke-virtual {v0}, [Lcom/android/launcher3/executor/StateAppInfoHolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/executor/StateAppInfoHolder;

    return-object v0
.end method


# virtual methods
.method getStateAppInfo()Lcom/android/launcher3/executor/StateAppInfo;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/launcher3/executor/StateAppInfoHolder;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    return-object v0
.end method

.method setStateAppInfo(Lcom/android/launcher3/executor/StateAppInfo;)V
    .locals 0
    .param p1, "appInfo"    # Lcom/android/launcher3/executor/StateAppInfo;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/android/launcher3/executor/StateAppInfoHolder;->mAppInfo:Lcom/android/launcher3/executor/StateAppInfo;

    .line 10
    return-void
.end method
