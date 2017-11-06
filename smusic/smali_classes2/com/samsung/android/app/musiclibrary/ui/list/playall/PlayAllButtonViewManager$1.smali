.class Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager$1;
.super Ljava/lang/Object;
.source "PlayAllButtonViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

.field final synthetic val$playAll:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager$1;->val$playAll:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager$1;->val$playAll:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;->play()V

    .line 27
    return-void
.end method
