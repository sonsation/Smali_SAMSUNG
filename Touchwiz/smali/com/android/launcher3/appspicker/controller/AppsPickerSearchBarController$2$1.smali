.class Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2$1;
.super Ljava/lang/Object;
.source "AppsPickerSearchBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2$1;->this$1:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2$1;->this$1:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;

    iget-object v0, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    .line 106
    return-void
.end method
