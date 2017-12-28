.class Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$5;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 235
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$5;->this$0:Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    .line 241
    :cond_0
    return-void
.end method
