.class Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$3;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$3;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$3;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->access$200(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    .line 363
    return-void
.end method