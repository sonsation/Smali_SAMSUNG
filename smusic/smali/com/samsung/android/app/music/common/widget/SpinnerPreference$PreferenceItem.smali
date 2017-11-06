.class Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/widget/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceItem"
.end annotation


# instance fields
.field final entry:Ljava/lang/CharSequence;

.field final summary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;->entry:Ljava/lang/CharSequence;

    .line 210
    iput-object p2, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;->summary:Ljava/lang/CharSequence;

    .line 211
    return-void
.end method
