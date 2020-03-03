#include "dialog.h"
#include "ui_dialog.h"
#include <QDebug>
#include "../Lesson1/lab1.h"
#include "QMessageBox.h"


Dialog::Dialog(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::Dialog)
{
    ui->setupUi(this);
}

Dialog::~Dialog()
{
    delete ui;
}

void Dialog::calculate() {

    bool isAOK, isBOK;

    int a = ui->lineEditA->text().toInt(&isAOK);
    int b = ui->lineEditB->text().toInt(&isBOK);
    if(!isAOK) {
        QMessageBox::critical(this, "Ошибка", "А должно быть числом");
        return;
    }
    if(!isBOK) {
        QMessageBox::critical(this, "Ошибка", "А должно быть числом");
        return;
    }
    // Вызов функции получения списка простых чисел

    for(int n: ListOfPrimeNumbers(a, b)) {
        ui->listWidget->addItem(QString::number(n));
    }
}
