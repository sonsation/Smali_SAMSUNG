.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$1;
.super Ljava/lang/Object;
.source "MySubscriptionActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

.field final synthetic val$slidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$1;->val$slidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$1;->val$slidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setPrimaryColor(I)V

    .line 92
    return-void
.end method
