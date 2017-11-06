.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListMenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->performMenuAddTo([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

.field final synthetic val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic val$checkedItemAudioIds:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;[J)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;->this$1:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;->val$checkedItemAudioIds:[J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;->this$1:Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu$2;->val$checkedItemAudioIds:[J

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;->access$1200(Lcom/samsung/android/app/music/common/menu/ListMenuGroup$CommonMenu;[J)V

    .line 388
    return-void
.end method
