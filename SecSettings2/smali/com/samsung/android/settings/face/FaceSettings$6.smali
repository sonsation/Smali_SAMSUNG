.class Lcom/samsung/android/settings/face/FaceSettings$6;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceSettings;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$6;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$6;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->-set0(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 874
    return-void
.end method
