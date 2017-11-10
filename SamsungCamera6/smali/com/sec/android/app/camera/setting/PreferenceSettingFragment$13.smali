.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->startScrollAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;Landroid/widget/ListView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$13;->val$position:I

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method
