.class Lcom/samsung/android/settings/face/FaceEntry$2;
.super Ljava/lang/Object;
.source "FaceEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceEntry;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceEntry$2;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method
