.class Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginRequest"
.end annotation


# instance fields
.field public final appId:I

.field public final forceLogin:Z

.field public final requestId:I

.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

.field public final withLoadSetting:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/service/milk/LoginManager;IIZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;
    .param p2, "appId"    # I
    .param p3, "requestId"    # I
    .param p4, "forceLogin"    # Z
    .param p5, "withLoadSetting"    # Z

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->appId:I

    .line 212
    iput p3, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->requestId:I

    .line 213
    iput-boolean p4, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->forceLogin:Z

    .line 214
    iput-boolean p5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$LoginRequest;->withLoadSetting:Z

    .line 215
    return-void
.end method
