.class Lcom/samsung/android/settings/notification/BlockNotificationList$10;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

.field final synthetic val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/BlockNotificationList;
    .param p2, "val$row"    # Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 594
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 595
    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget-object v2, v1, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->val$row:Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    iget v3, v1, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList$10;->this$0:Lcom/samsung/android/settings/notification/BlockNotificationList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v1, 0x7f0b1c98

    .line 594
    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;I)V

    .line 597
    return v5
.end method
