.class Lcom/android/server/fingerprint/FingerprintService$6;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap16(Lcom/android/server/fingerprint/FingerprintService;II)V

    .line 310
    return-void
.end method
