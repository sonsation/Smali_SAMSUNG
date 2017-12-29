.class Lcom/samsung/android/settings/face/FaceLockSettings$2;
.super Ljava/lang/Object;
.source "FaceLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceLockSettings;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    .line 389
    return-void
.end method
