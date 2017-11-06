.class Lcom/samsung/android/app/music/common/widget/SpinnerPreference$2;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/widget/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$2;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$2;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->access$300(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$2;->this$0:Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->access$300(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 84
    const/4 v0, 0x1

    return v0
.end method
