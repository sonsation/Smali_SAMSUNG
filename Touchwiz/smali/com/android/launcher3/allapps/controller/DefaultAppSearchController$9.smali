.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->showSearchField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$300(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$800(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->access$300(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/widget/SearchView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 444
    return-void
.end method
