.class Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;
.super Ljava/lang/Object;
.source "AppsPickerSearchBarController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 102
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2$1;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    const/4 v1, 0x1

    return v1
.end method
