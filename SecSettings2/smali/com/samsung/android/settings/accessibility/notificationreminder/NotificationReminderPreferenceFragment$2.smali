.class Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;
.super Landroid/database/ContentObserver;
.source "NotificationReminderPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    .line 136
    return-void
.end method
