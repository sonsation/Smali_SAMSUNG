.class Lcom/android/server/DssControllerImpl$DssAppDate;
.super Ljava/lang/Object;
.source "DssControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DssAppDate"
.end annotation


# instance fields
.field public mCpuLevel:I

.field public mGameSiopLevel:I

.field public mGpuLevel:I

.field public mScale:F

.field final synthetic this$0:Lcom/android/server/DssControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/DssControllerImpl;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/DssControllerImpl;

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->this$0:Lcom/android/server/DssControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    .line 52
    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    .line 53
    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    .line 54
    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    .line 50
    return-void
.end method


# virtual methods
.method addPackage(F)V
    .locals 1
    .param p1, "scalingFactor"    # F

    .prologue
    const/4 v0, 0x0

    .line 58
    iput p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    .line 59
    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    .line 60
    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    .line 61
    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    .line 57
    return-void
.end method

.method addPackage(FI)V
    .locals 0
    .param p1, "scalingFactor"    # F
    .param p2, "gameSiopLevel"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    .line 66
    iput p2, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    .line 64
    return-void
.end method

.method addPackage(FLjava/lang/String;)V
    .locals 2
    .param p1, "scalingFactor"    # F
    .param p2, "gameSiopLevels"    # Ljava/lang/String;

    .prologue
    .line 70
    iput p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    .line 71
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "siopLevel":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    .line 73
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    .line 69
    return-void
.end method
