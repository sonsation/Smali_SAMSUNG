.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;
.super Ljava/lang/Object;
.source "MusicPathLineAnimationView.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$1;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView$AnimatorListenerAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;)V

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 157
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDirection(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public getDuration(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRepeatCount(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getStartPoint(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method
