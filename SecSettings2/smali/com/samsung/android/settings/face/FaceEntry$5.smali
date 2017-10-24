.class Lcom/samsung/android/settings/face/FaceEntry$5;
.super Ljava/lang/Object;
.source "FaceEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceEntry;->showSensorErrorDialog(I)V
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
    .line 289
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceEntry$5;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry$5;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 291
    return-void
.end method
