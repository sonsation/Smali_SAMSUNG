.class Landroid/preference/InfinityListPreference$3;
.super Ljava/lang/Thread;
.source "InfinityListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/InfinityListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/InfinityListPreference;


# direct methods
.method constructor <init>(Landroid/preference/InfinityListPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/InfinityListPreference$3;->this$0:Landroid/preference/InfinityListPreference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/preference/InfinityListPreference$3;->this$0:Landroid/preference/InfinityListPreference;

    iget-object v2, v0, Landroid/preference/InfinityListPreference;->mProgressString:Ljava/lang/String;

    iget-object v1, v0, Landroid/preference/InfinityListPreference;->mProgressText:Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/view/ViewRootImpl$CalledFromWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/preference/InfinityListPreference;->runRefreshProgressDelayed()V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/preference/InfinityListPreference;->removeRefreshProgressDelayed()V

    goto :goto_0
.end method
