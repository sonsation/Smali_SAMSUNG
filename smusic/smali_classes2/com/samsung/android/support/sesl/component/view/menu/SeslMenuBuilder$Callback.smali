.class public interface abstract Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;
.super Ljava/lang/Object;
.source "SeslMenuBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
.end method

.method public abstract onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
.end method
