.class Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup$1;
.super Ljava/lang/Object;
.source "SimpleScrollPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup$1;->this$0:Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleScrollPopup;->dismiss()V

    .line 65
    return-void
.end method
