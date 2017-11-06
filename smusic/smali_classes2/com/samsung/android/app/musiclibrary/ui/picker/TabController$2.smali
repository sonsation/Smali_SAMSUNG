.class Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$2;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->addTabInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method
