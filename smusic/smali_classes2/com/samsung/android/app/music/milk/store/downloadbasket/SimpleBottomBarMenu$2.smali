.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;
.super Ljava/lang/Object;
.source "SimpleBottomBarMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 130
    return-void
.end method
