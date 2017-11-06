.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;
.source "MusicPathLineAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicPathAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V
    .locals 1

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[J

    move-result-object v0

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getDirection(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method public getDuration(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$600(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[J

    move-result-object v0

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$MusicPathAnimatorListener;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->access$500(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)[Landroid/animation/TimeInterpolator;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
