.class public Lcom/android/systemui/statusbar/BlockNotificationGuts;
.super Lcom/android/systemui/statusbar/NotificationGuts;
.source "BlockNotificationGuts.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getGutsType()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
