.class public final Lcom/android/launcher3/allapps/AppsUtils;
.super Ljava/lang/Object;
.source "AppsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p5, "appsFocusListener"    # Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 43
    .local v0, "appIcon":Lcom/android/launcher3/common/view/IconView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 44
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 45
    invoke-virtual {v0, p3}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {v0, p4}, Lcom/android/launcher3/common/view/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 47
    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/view/IconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 48
    invoke-virtual {v0, p5}, Lcom/android/launcher3/common/view/IconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 49
    return-object v0
.end method

.method public static createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "appIcon"    # Lcom/android/launcher3/common/view/IconView;
    .param p3, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p6, "appsFocusListener"    # Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 58
    invoke-virtual {p2, p3}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 59
    invoke-virtual {p2, p4}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p2, p5}, Lcom/android/launcher3/common/view/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    invoke-virtual {p2, p6}, Lcom/android/launcher3/common/view/IconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 62
    invoke-virtual {p2, p6}, Lcom/android/launcher3/common/view/IconView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    .end local p2    # "appIcon":Lcom/android/launcher3/common/view/IconView;
    :goto_0
    return-object p2

    .restart local p2    # "appIcon":Lcom/android/launcher3/common/view/IconView;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method
