.class Lcom/samsung/android/settings/face/FaceSettings$5;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 865
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$5;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 869
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 868
    return-void
.end method
