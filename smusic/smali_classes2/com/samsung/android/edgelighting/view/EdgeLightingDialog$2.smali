.class Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$2;
.super Ljava/lang/Object;
.source "EdgeLightingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->stopPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog$2;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;->access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingDialog;)V

    .line 372
    return-void
.end method
