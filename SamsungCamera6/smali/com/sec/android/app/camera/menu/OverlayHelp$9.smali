.class Lcom/sec/android/app/camera/menu/OverlayHelp$9;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->createInteractionGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    iput p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$9;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$9;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1500(Lcom/sec/android/app/camera/menu/OverlayHelp;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$9;->val$index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
