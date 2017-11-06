.class Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;
.super Ljava/lang/Object;
.source "ShareEditDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->initLayout(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$000(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;->access$000(Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareEditDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
